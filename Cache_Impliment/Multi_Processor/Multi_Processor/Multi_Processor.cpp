// Multi_Processor.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Multi_Processor.h"
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <bitset>
#include <iomanip>
#define _WIN32_WINNT 0x0602
#include <windows.h>
CWinApp theApp;
#include <vector>
using std::vector;
using namespace std;

// Debug
bool debug_mode = 1;

void sim(int np, int cache_size_kB)
{
	// Initialise
	const int No_Multi = 50 * 50 * 50;
	int Remain_Multi = No_Multi;
	const int Num_Addition = 50 * 50;
	int Remain_Addition = Num_Addition;

	ofstream Result_File("Cache_Sim.csv", ios::app);

	int** ProcessorArray = new int*[np];
	for (int i = 0; i < np; i++)
		ProcessorArray[i] = new int[Num_Addition];

	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Num_Addition; j++)
		{
			ProcessorArray[i][j] = 0;
			if (debug_mode)
				Result_File << ProcessorArray[i][j] << ",";
		}
		Result_File << endl;
	}
	Result_File << endl;

	// Distribute Task
	int position = 0;
	int matrix_c_element_num = 0;
	int processor_num = 0;

	while (matrix_c_element_num != Num_Addition)
	{
		ProcessorArray[processor_num][position] = matrix_c_element_num + 300000;
		matrix_c_element_num++;
		if (processor_num < (np - 1))
		{
			processor_num++;
		}
		else
		{
			processor_num = 0;
			position++;
		}
	}

	if (debug_mode)
	{
		for (int i = 0; i < np; i++)
		{
			for (int j = 0; j < Num_Addition; j++)
				Result_File << ProcessorArray[i][j] << ",";
			Result_File << endl;
		}
		Result_File << endl;
	}
	
	if (debug_mode)
	{
		for (int i = 0; i < np; i++)
		{
			for (int j = 0; j < Num_Addition; j++)
				Result_File << (ProcessorArray[i][j] % 300000 / 50) << ",";
			Result_File << endl;
		}
		Result_File << endl;
	}

	// Initial cache Constants
	const int Ways = 4;
	const int Words_Per_Block = 4;
	int Hit_Time;
	if (cache_size_kB == 8)
		Hit_Time = 1;
	else
		Hit_Time = 2;
	const int Word_Size = 4; // Size of words in byte
	const int Address_Size = 32; // Number of bits used in the memory address
	const int Column_Bits = 3; // Number of bits used to dereference a coloumn in SDRAM
	const int Words_Per_Bus_Transfer = 2; // Number of words transfered per CAS.
	const int CAS = 72; // CAS time in clock cycles
	const int RAS = 24; // RAS time in clock cycles
	const int DRAM_Word_per_column = 2;
	const int DRAM_Columns_per_row = 8;
	const int DRAM_Row_Offset = log2(DRAM_Word_per_column * DRAM_Columns_per_row * 4);
	// Convert input to shift bits amount
	const int Data_Size_bit_shift = log2(cache_size_kB * 1024);
	const int Words_Per_Block_bit_shift = log2(Words_Per_Block);
	const int Associative_bit_shift = log2(Ways);
	// Calculated Cache Aruguments
	const int Index_Size = Data_Size_bit_shift - 2 - Words_Per_Block_bit_shift - Associative_bit_shift;
	const int Lines = 1 << Index_Size; // Number of lines per way in the cache (derived from Index_Size)
	const int Address_Bits_Per_Block = Words_Per_Block_bit_shift; // Address bits used to derefence a word in a block
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block + 2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)

	const int Blocks = Lines * Ways;
	const int Block_size = Words_Per_Block * Word_Size;
	const int Cache_Size = Blocks * Block_size;

	Result_File << "Number of Processors" << "," << "Cache Size" << "," << "Ways" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << ","
		<< endl
		<< np << "," << Cache_Size / 1024 << "," << Ways << "," << Words_Per_Block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << ","
		<< endl;

	// Three Dimentsional Valid Array
	bool*** Valid = new bool**[np];
	for (int i = 0; i < np; i++)
	{
		Valid[i] = new bool*[Ways];
		for (int j = 0; j < Ways; j++)
			Valid[i][j] = new bool[Lines];
	}
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Ways; j++)
		{
			for (int k = 0; k < Lines; k++)
				Valid[i][j][k] = 0;
		}
	}

	// Three Dimentsional Tag Array
	bool*** Tag = new bool**[np];
	for (int i = 0; i < np; i++)
	{
		Tag[i] = new bool*[Ways];
		for (int j = 0; j < Ways; j++)
			Tag[i][j] = new bool[Lines];
	}
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Ways; j++)
		{
			for (int k = 0; k < Lines; k++)
				Tag[i][j][k] = 0;
		}
	}

	// Declare any required variables in this section
	unsigned long long int **time_total = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		time_total[i] = new unsigned long long int[1];

	unsigned long long int **total_instruction = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		total_instruction[i] = new unsigned long long int[1];

	unsigned long long int **A_hit_total = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		A_hit_total[i] = new unsigned long long int[1];

	unsigned long long int **B_hit_total = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		B_hit_total[i] = new unsigned long long int[1];

	unsigned long long int **C_hit_total = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		C_hit_total[i] = new unsigned long long int[1];

	unsigned long long int **Write_Address_C = new unsigned long long int*[np];
	for (int i = 0; i < np; i++)
		Write_Address_C[i] = new unsigned long long int[Num_Addition];
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Num_Addition; j++)
		if (!i & !j)
			Write_Address_C[i][0] = ProcessorArray[i][0] + 100000;
		else
		{
			if (ProcessorArray[i][j])
				Write_Address_C[i][j] = ProcessorArray[i][j] + 100000;
			else
				Write_Address_C[i][j] = 0;
		}
	}
	
	if (debug_mode)
	{
		Result_File << "Write_Address_C " << endl;
		for (int i = 0; i < np; i++)
		{
			for (int j = 0; j < Num_Addition; j++)
				Result_File << Write_Address_C[i][j] << ",";
			Result_File << endl;
		}
		Result_File << endl;
	}

	for (int p = 0; p < np; p++)
	{

	}

}



int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	remove("Cache_Sim.csv");
	// sim number of processer, cache size in kB
	sim(10,32);

	if (debug_mode)
		std::cin.get();
	return 0;
}
