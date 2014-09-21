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
#define _WIN32_WINNT 0x0602
#include <windows.h>
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

	int** Valid = new int*[Ways];	// Array to store Valid Bits
	for (int i = 0; i < Ways; i++)
		Valid[i] = new int[Lines];

	int** Tag = new int*[Ways];		// Array to store Tag bits.
	for (int i = 0; i < Ways; i++)
		Tag[i] = new int[Lines];

	int** LRU = new int*[Ways];	// Array to store LRU Bits
	for (int i = 0; i < Ways; i++)
		LRU[i] = new int[Lines];

	// Declare any required variables in this section
	int time = 0;

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

		// Matrix array pointers
		int Start_Pointer_A = 100000;
		int Start_Pointer_B = 200000;
		int Start_Pointer_C = 300000;
		const int DRAM_Row_Size = 10240;

		time += 10; // Add delay that exists before entering main loop
		for (int i = 0; i < Matrix_Size; i++)
		{
			time += 10; // Add outer loop delay 
			for (int j = 0; j < Matrix_Size; j++)
			{
				time += 10; // Add middle loop delay 

				for (int k = 0; k < Matrix_Size; k = k++)
				{
					// Add inner loop delay.
					time += 10;

					// Calculate Read Address for Matrix A[i][k]
					int Read_Address_A = (Start_Pointer_A + k + i*Matrix_Size) << 2;// Calculate next lw address for matrix A
					int Read_Address_B = (Start_Pointer_B + k*Matrix_Size + j) << 2;// Calculate next lw address for matrix B
					int Read_Address_C = (Start_Pointer_C + j + i*Matrix_Size) << 2;// Calculate next lw address for matrix C

					cerr <<  "A: " << Read_Address_A << ", Tag: " << Read_Address_A / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_A / (Block_size / 8)) % Sets
						<< ". B: " << Read_Address_B << ", Tag: " << Read_Address_B / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_B / (Block_size / 8)) % Sets
						<< ". C: " << Read_Address_C << ", Tag: " << Read_Address_B / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_B / (Block_size / 8)) % Sets
						<< endl;

					// Calculate Tag
					int Read_Tag_A = Read_Address_A / ((Block_size / 8) * Sets);
					int Read_Tag_B = Read_Address_B / ((Block_size / 8) * Sets);
					int Write_Tag_C = Read_Address_C / ((Block_size / 8) * Sets);

					// Calculate Index
					int Index_A = (Read_Address_A / (Block_size / 8)) % Sets;
					int Index_B = (Read_Address_B / (Block_size / 8)) % Sets;
					int Index_C = (Read_Address_C / (Block_size / 8)) % Sets;

					// Deference Index for each way and check each tag and valid bit.
					boolean hit_A = false;
					boolean hit_B = false;
					boolean hit_C = false;
					int hit_A_counter=0;
					int hit_B_counter=0;
					int hit_C_counter=0;
					boolean Previous_RAM_Row_Valid_A = false;
					int Current_RAM_Row_A;
					int Previous_RAM_Row_A;
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (Valid[l][Index_A] & (Tag[l][Index_A] == Read_Tag_A))
						{
							hit_A = true;
						}
						if (Valid[l][Index_B] & (Tag[l][Index_B] == Read_Tag_A))
						{
							hit_B = true;
						}
						if (Valid[l][Index_C] & (Tag[l][Index_C] == Write_Tag_C))
						{
							hit_C = true;
						}
					}

					if (hit_A)
					{
						time += 10;// If hit, add hit time
						hit_A_counter++;
					}
					else
					{
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row_A = Read_Address_A / DRAM_Row_Size;
						if (Previous_RAM_Row_Valid_A & (Current_RAM_Row_A == Previous_RAM_Row_A) )
						{
							time += 10; // Caculate number of CAS delays needed.
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row_A = Current_RAM_Row_A; // Update RAM row
							time += 10; // Calculate RAS and CAS delays needed.
						}
						Previous_RAM_Row_Valid_A = true; // On power up, a RAS is always needed.

						// Update Cache with new data
						int Update_Way = LRU[Ways - 1][Index_A];// Choose your way strategy (random,LRU, ~LRU)

						Valid[Update_Way][Index_A] = true; // Write to the way you chose in previous line
						Tag[Update_Way][Index_A] = Read_Tag_A; // Write to the way you chose in previous line

						for (int i = 1; i < Ways; i++)	// Update LRU order
						{
							LRU[i][Index_A] = LRU[i - 1][Index_A];
							LRU[0][Index_A] = Update_Way;
						}

					}
					if (hit_B)
					{
						time += 10;// If hit, add hit time
						hit_B_counter++;
					}
					if (hit_C)
					{
						time += 10;// If hit, add hit time
						hit_C_counter++;
					}

				}
				cerr << endl;
			}
			cerr << endl;
			cerr << endl;
		}
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


