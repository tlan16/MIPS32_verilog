// Multi_Processor.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Multi_Processor.h"
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <cstring>
#include <string>
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
bool debug_check_address = 1;

void sim(int np, int cache_size_kB)
{
	// Initialise output files
	string detail_file_name = "Detail_" + to_string(np) + "P" + "_" + to_string(cache_size_kB) + "kB" + ".csv";
	remove(detail_file_name.c_str());
	ofstream Result_File("Cache_Sim.csv", ios::app);
	ofstream Detail_file(detail_file_name.c_str(), ios::app);

	// Initial processor state array (1:not finished 4:finished)
	int *ProcessorStateArray = new int[np];
	for (int i = 0; i < np; i++)
	{
		ProcessorStateArray[i] = 1;
	}
	bool All_processor_finished = 0;

	// Initial processor position array
	int *ProcessorPositionArray = new int[np];
	for (int i = 0; i < np; i++)
	{
		ProcessorPositionArray[i] = 0;
	}

	// Distribute tasks and assign addresses to each processor
	int** address_cal(int num_p);
	int** AddressArray = address_cal(np);

	// Check addresses distribution
	if (debug_check_address)
	{
		bool all_zero;
		for (int i = 0; i < np; i++)
		{
			Detail_file << "P" << i << ",";
			if (i == (np - 1))
				Detail_file << endl;
		}
		for (int i = 0; i < 300000; i++)
		{
			for (int p = 0; p < np; p++)
			{
				Detail_file << AddressArray[p][i] << ",";
				all_zero = 1;
				if (AddressArray[p][i])
					all_zero = 0;
			}
			Detail_file << endl;
			if (all_zero)
				break;
		}
	}

	// Initialise Address, Index, Tag
	int Current_Address;
	int Current_Index;
	int Current_Tag;

	// Initial result timers
	unsigned long long int Global_Counter = 0;
	unsigned long long int DRAM_Time = Global_Counter;
	unsigned long long int *Resume_Time = new unsigned long long int[np];
	for (int i = 0; i < np; i++)
		Resume_Time[i] = Global_Counter; // Initially not locked

	// Initial delays
	int DRAM_access_delay = 20;

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
	// Calculated Cache Arguments
	const int Index_Size = Data_Size_bit_shift - 2 - Words_Per_Block_bit_shift - Associative_bit_shift;
	const int Lines = 1 << Index_Size; // Number of lines per way in the cache (derived from Index_Size)
	const int Address_Bits_Per_Block = Words_Per_Block_bit_shift; // Address bits used to derefence a word in a block
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block + 2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)

	const int Blocks = Lines * Ways;
	const int Block_size = Words_Per_Block * Word_Size;
	const int Cache_Size = Blocks * Block_size;

	cout << "Number of Processors=" << np << ", Cache Size=" << Cache_Size / 1024 << endl
		<< "Ways=" << Ways << ", Words_Per_Block=" << Words_Per_Block << ", Hit_Time=" << Hit_Time << endl
		<< "Sets=" << Lines << ", Index_Size=" << Index_Size << ", Tag_Size=" << Tag_Bits
		<< endl;
	Detail_file << "Number of Processors" << "," << "Cache Size" << "," << "Ways" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << ","
		<< endl
		<< np << "," << Cache_Size / 1024 << "," << Ways << "," << Words_Per_Block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << ","
		<< endl;
	Result_File << "Number of Processors" << "," << "Cache Size" << "," << "Ways" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << ","
		<< endl
		<< np << "," << Cache_Size / 1024 << "," << Ways << "," << Words_Per_Block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << ","
		<< endl;

	// Three Dimensional Valid Array
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

	// Three Dimensional Tag Array
	int*** Tag = new int**[np];
	for (int i = 0; i < np; i++)
	{
		Tag[i] = new int*[Ways];
		for (int j = 0; j < Ways; j++)
			Tag[i][j] = new int[Lines];
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
	unsigned long long int *time_total = new unsigned long long int[np];
	for (int i = 0; i < np; i++)
	{
		time_total[i] = 0;
	}

	// Array to store total miss
	int** miss_total = new int*[np];
	for (int i = 0; i < np; i++)
		miss_total[i] = new int[3];
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			miss_total[i][j] = 0;
		}
	}

	// Array to store total hit
	int** hit_total = new int*[np];
	for (int i = 0; i < np; i++)
		hit_total[i] = new int[3];
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			hit_total[i][j] = 0;
		}
	}

	bool hit = 0;
	int which_matrix;
	unsigned long long int Current_RAM_Row = 0;
	unsigned long long int Previous_RAM_Row = 0;
	bool Previous_RAM_Row_Valid = false;
	int *Update_Way = new int[np]; // Update way using fifo method
	for (int i = 0; i < np; i++)
	{
		Update_Way[i] = 0;
	}

	while (!All_processor_finished)
	{
		for (int p = 0; p < np; p++)
		{
			switch (ProcessorStateArray[p])
			{
			case 1:
				// Check if resumed
				if (debug_mode)
					Detail_file << "p=" << "," << p << "," << "GC" << "," << Global_Counter << "," << endl;
				if (Resume_Time[p] <= Global_Counter) // resumed
				{
					// check if this processor finished
					if (!AddressArray[p][ProcessorPositionArray[p]]) // finished
						ProcessorStateArray[p] = 4;
					else // not finished
					{
						// get address, index, tag
						Current_Address = AddressArray[p][ProcessorPositionArray[p]];
						Current_Index = (Current_Address / Block_size) % Lines;
						Current_Tag = Current_Address / (Block_size * Lines);

						switch (Current_Address / 100000)
						{
						case 1: // accessing matrix A
							which_matrix = 0;
							if (debug_mode)
								Detail_file << "A:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						case 2: // accessing matrix B
							which_matrix = 1;
							if (debug_mode)
								Detail_file << "B:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						case 3: // accessing matrix C
							which_matrix = 2;
							if (debug_mode)
								Detail_file << "C:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						}

						ProcessorPositionArray[p]++;

						// check if chace hit
						hit = 0;
						for (int l = 0; l < Ways; l++)
						{
							if (Valid[p][l][Current_Index] & (Tag[p][l][Current_Index] == Current_Tag))
								hit = 1;
						}

						if (hit) // hit
						{
							hit_total[p][which_matrix]++;
							if (debug_mode)
								Detail_file << "Matrix" << which_matrix << "Hit" << endl;
						}
						else // not hit
						{
							miss_total[p][which_matrix]++;
							Current_RAM_Row = Current_Address >> DRAM_Row_Offset;
							if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
							{
								if (debug_mode)
									Detail_file << "Matrix" << which_matrix << "," << "CAS Miss" << "," << "Update_Way" << "," << Update_Way[p] << endl;
							}
							else // Need RAS and CAS
							{
								Previous_RAM_Row = Current_RAM_Row; // Update RAM row
								if (debug_mode)
									Detail_file << "Matrix" << which_matrix << "," << "CAS & RAS Miss" << "," << "Update_Way" << "," << Update_Way[p] << endl;
							}
							Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

							Valid[p][Update_Way[p]][Current_Index] = true; // Write to the way you chose in previous line
							Tag[p][Update_Way[p]][Current_Index] = Current_Tag; // Write to the way you chose in previous line

							if (Update_Way[p] == (Ways - 1))
								Update_Way[p] = 0;
							else
								Update_Way[p]++;

							Resume_Time[p] = DRAM_Time + DRAM_access_delay;
							DRAM_Time = Resume_Time[p];
							if (debug_mode)
								Detail_file << "Resume_Time" << "," << Resume_Time[p] << "," << "DRAM_Time" << "," << DRAM_Time << "," << endl;
						}
					}
				}
				break;
			}


			// Check if all processor finished
			All_processor_finished = 1;
			for (int p = 0; p < np; p++)
			{
				if (ProcessorStateArray[p] != 4)
					All_processor_finished = 0;
			}
			if (All_processor_finished)
				break;
		} // end for
		if (All_processor_finished)
			break;
		else
			Global_Counter++;
	}

	// Output results
	Result_File << endl;
	Result_File << "P" << "," << "A_Hit Rate" << "," << "A_Total Instruction" << "," 
		<< "B_Hit Rate" << "," << "B_Total Instruction" << "," 
		<< "C_Hit Rate" << "," << "C_Total Instruction" << "," 
		<< "Time" << "," << endl;
	for (int p = 0; p < np; p++)
	{
		Result_File << p << ","
			<< (double)hit_total[p][0] / (double)(hit_total[p][0] + miss_total[p][0]) * 100 << "," << (hit_total[p][0] + miss_total[p][0]) << ","
			<< (double)hit_total[p][1] / (double)(hit_total[p][1] + miss_total[p][1]) * 100 << "," << (hit_total[p][1] + miss_total[p][1]) << ","
			<< (double)hit_total[p][2] / (double)(hit_total[p][2] + miss_total[p][2]) * 100 << "," << (hit_total[p][2] + miss_total[p][2]) << ","
			<< "N/A" << "," << endl;
	}
	
	//Delete variables
	Detail_file.close();
	delete[] ProcessorStateArray;
	delete[] ProcessorPositionArray;
	for (int p = 0; p < np; p++)
		delete[] AddressArray[p];
	delete[] AddressArray;
	delete[] Resume_Time;
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Ways; j++)
			delete[] Valid[i][j];
		delete[] Valid[i];
	}
	delete[] Valid;
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < Ways; j++)
			delete[] Tag[i][j];
		delete[] Tag[i];
	}
	delete[] Tag;
}



int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	remove("Cache_Sim.csv");
	// sim: number of processor, cache size in kB
	if (debug_mode)
	{
		for (int np = 2; np < 50; np++)
			sim(np, 8);
		for (int np = 2; np < 50; np++)
			sim(np, 32);
	}
	else
	{
		for (int np = 2; np < 50; np++)
			sim(np, 8);
		for (int np = 2; np < 50; np++)
			sim(np, 32);
	}

	//std::cin.get();
	return 0;
}

int** address_cal(int num_p){
	cerr << "Calculating Addresses.." << endl;
	int **address = new int*[num_p];
	int Start_Pointer_A = 100000;
	int Start_Pointer_B = 200000;
	int Start_Pointer_C = 300000;
	int m = 0;	// row of c
	int n = 0;  // column of c
	int p = 0;
	int *add_pos = new int[num_p];

	for (int i = 0; i < num_p; i++){
		address[i] = new int[300000]; // The worse case is 1 core
		// would need to access 50x50x101 = 252500 address
		// make the array for address for each core be 300000 for safty
		add_pos[i] = 0;
	}

	// Initialise result
	for (int p = 0; p < num_p; p++)
	{
		for (int i = 0; i < 300000; i++)
			address[p][i] = 0;
	}

	for (int c = 0; c < 2500; c++){
		m = c / 50;
		n = c % 50;
		for (int i = 0; i < 50; i++){
			address[p][add_pos[p]] = Start_Pointer_A + ((m * 50 + i) << 2); // matrix A address
			//cerr << address[p][add_pos[p]] << "  ";
			add_pos[p]++;
			address[p][add_pos[p]] = Start_Pointer_B + ((n + i * 50) << 2); // matrix B address
			//cerr << p << ":" << add_pos[p] << " " << address[p][add_pos[p]] << endl;
			add_pos[p]++;
			//std::cin.get();
		}
		address[p][add_pos[p]] = Start_Pointer_C + (c << 2);//matrix C address
		//cerr << endl;
		//cerr << address[p][add_pos[p]] << endl;
		//cerr << "p = " << p << endl;
		//cerr << endl;
		add_pos[p]++;
		//std::cin.get();
		p++;
		if (p == num_p) p = 0;
	}

	return address;

}
