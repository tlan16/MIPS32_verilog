// Cache_Sim_Pseudo_Template :
// This file contains a very basic template that can be used to build a simple
// cache simulator required for ECE4074 assignment 2.
// Constants and variables used below are simply a guide to students
// on how to implement the design. Many enhancements can be done by 
// diverging from the structure presented below.

#include "stdafx.h"
#include <stdio.h>
#include <iostream>
#include <bitset>
#include <iomanip>
using namespace std;

int cache_simulator(int Ways, int Data_Size_kB, int Words_Per_Bock, int Hit_Time)
{
	// Print input auguments
	cerr << "Data_Size: " << Data_Size_kB << "kB" << endl;
	cerr << "Ways: " << Ways << endl;
	cerr << "Words_Per_Bock: " << Words_Per_Bock << endl;
	cerr << "Hit_Time: " << Hit_Time << endl;
	cerr << endl;

	// Constants
	const int Word_Size = 32; // Size of words in bits
	const int Address_Size = 32; // Number of bits used in the memory address
	const int Column_Bits = 3; // Number of bits used to dereference a coloumn in SDRAM
	const int Words_Per_Bus_Transfer = 2; // Number of words transfered per CAS.
	const int CAS = 24; // CAS time in clock cycles
	const int RAS = 72; // RAS time in clock cycles

	// Redifined Input Aruguments
	const int Data_Size = Data_Size_kB * 1024 * 8; // bits

	// Calculated Aruguments
	const int Sets = Data_Size / Word_Size / Words_Per_Bock / Ways;
	const int Lines = Sets; // Number of lines per way in the cache (derived from Index_Size)
	const int Blocks_Per_Set = Ways;
	const int Index_Size = log2(Sets); // Number of bits used to create the index
	const int Address_Bits_Per_Block = log2(Words_Per_Bock); // Address bits used to derefence a word in a block
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block + 2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)

	const int Blocks = Blocks_Per_Set * Sets;
	const int Block_size = Words_Per_Bock * Word_Size;
	const int Cache_Size = Blocks * Block_size;

	// Verify Cache Size with Data Size
	cerr << "Cache Size: " << (Cache_Size / 8 / 1024) << "kB" << endl;
	cerr << "Sets: " << Sets << endl;
	cerr << "Index_Size: " << Index_Size << "bit" << endl;
	cerr << "Tag_Bits: " << Tag_Bits << "bit" << endl;
	cerr << "Address_Bits_Per_Block: " << Address_Bits_Per_Block << "bit" << endl;
	cerr << "=====================================" << endl;

	int** Valid = new int*[Ways];
	for (int i = 0; i < Ways; i++)
		Valid[i] = new int[Lines];

	int** Tag = new int*[Ways];
	for (int i = 0; i < Ways; i++)
		Tag[i] = new int[Lines];

	// Declare any required variables in this section

	int Matrix_Size_fixed = 3;
	for (int Matrix_Size = Matrix_Size_fixed; Matrix_Size <= Matrix_Size_fixed; Matrix_Size++) // Step through all matrix sizes
	{

		// Initialize Cache as being empty
		for (int i = 0; i < Ways; i++)
		{
			for (int j = 0; j < Lines; j++)
			{
				Valid[i][j] = 0;
			}
		}

		// Create matrixes
		// Matrix A
		int** matrixA = new int*[Matrix_Size];
		for (int i = 0; i < Matrix_Size; i++)
			matrixA[i] = new int[Matrix_Size];

		int c = 1;
		for (int row = 0; row < Matrix_Size; row++)
		{
			for (int col = 0; col < Matrix_Size; col++)
				matrixA[row][col] = c++;
		}

		// Matrix B
		int** matrixB = new int*[Matrix_Size];
		for (int i = 0; i < Matrix_Size; i++)
			matrixB[i] = new int[Matrix_Size];

		c = 1;
		for (int row = 0; row < Matrix_Size; row++)
		{
			for (int col = 0; col < Matrix_Size; col++)
				matrixB[row][col] = c++;
		}

		// Matrix C
		int** matrixC = new int*[Matrix_Size];
		for (int i = 0; i < Matrix_Size; i++)
			matrixC[i] = new int[Matrix_Size];

		c = 1;
		for (int row = 0; row < Matrix_Size; row++)
		{
			for (int col = 0; col < Matrix_Size; col++)
				matrixC[row][col] = 0;
		}



		// Matrix array pointers
		int * Start_Pointer_A = *matrixA;
		int * Start_Pointer_B = *matrixB;
		int * Start_Pointer_C = *matrixC;

		if (Matrix_Size <= 4){
			cerr << "A:" << endl;
			for (int row = 0; row < Matrix_Size; row++)
			{
				for (int col = 0; col < Matrix_Size; col++)
					cerr << (col + Matrix_Size*row) << ": " << &(matrixA[row][col]) << ": " << *(&(matrixA[row][col])) << ", index: " << ((unsigned long int)&(matrixA[row][col]) / (Block_size / 8)) % Sets << ", tag: " << (unsigned long int)&(matrixA[row][col]) / ((Block_size / 8) * Sets) << endl;
				cerr << endl;
			}

			cerr << "B:" << endl;
			for (int row = 0; row < Matrix_Size; row++)
			{
				for (int col = 0; col < Matrix_Size; col++)
					cerr << (col + Matrix_Size*row) << ": " << &(matrixB[row][col]) << ": " << *(&(matrixB[row][col])) << endl;
				cerr << endl;
			}

			cerr << "C:" << endl;
			for (int row = 0; row < Matrix_Size; row++)
			{
				for (int col = 0; col < Matrix_Size; col++)
					cerr << (col + Matrix_Size*row) << ": " << &(matrixC[row][col]) << ": " << *(&(matrixC[row][col])) << endl;
				cerr << endl;
			}
			cerr << "=====================================" << endl;
		}

	int Read_Address = (int)&(matrixA[0][0]);
	int Read_Tag = Read_Address / ((Block_size / 8) * Sets);
	int temp = std::bitset<32>("00000000000000000000010000001100").to_ulong();
	int temp_tag = temp / ((Block_size / 8) * Sets);
	int temp_index = (temp / (Block_size / 8) ) % Sets;
	cerr << temp_tag << endl;
	cerr << temp_index << endl;


	}
	return 0;
}

int _tmain(int argc, _TCHAR* argv[]) // Some of the below constants you might want to pass as program arguments
{
	
	// Ways, Data_Size_kB, Words_Per_Bock, Hit_Time
	cache_simulator(4, 4, 1, 1);
	/*
	cache_simulator(1, 32, 2, 2);
	cache_simulator(1, 512, 2, 3);
	
	cache_simulator(1, 8, 8, 1);
	cache_simulator(1, 32, 8, 2);
	cache_simulator(1, 512, 8, 3);

	cache_simulator(4, 8, 2, 1);
	cache_simulator(4, 32, 2, 2);
	cache_simulator(4, 512, 2, 3);

	cache_simulator(4, 8, 8, 1);
	cache_simulator(4, 32, 8, 2);
	cache_simulator(4, 512, 8, 3);

	cache_simulator(1, 8, 4, 1);
	*/


	std::cin.get();
	return 0;
}

