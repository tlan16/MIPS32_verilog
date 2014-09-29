// Cache_Sim_Pseudo_Template :
// This file contains a very basic template that can be used to build a simple
// cache simulator required for ECE4074 assignment 2.
// Constants and variables used below are simply a guide to students
// on how to implement the design. Many enhancements can be done by 
// diverging from the structure presented below.

#include "stdafx.h"
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <bitset>
#include <iomanip>
#define _WIN32_WINNT 0x0602
#include <windows.h>
using namespace std;

int cache_simulator(int Ways, int Data_Size_kB, int Words_Per_Bock, int Hit_Time, int Debug_Mode)
{

	// Print input auguments
	cout << "Data_Size: " << Data_Size_kB << "kB" << endl;
	cout << "Ways: " << Ways << endl;
	cout << "Words_Per_Bock: " << Words_Per_Bock << endl;
	cout << "Hit_Time: " << Hit_Time << endl;
	cout << endl;

	// Constants
	const int Word_Size = 32; // Size of words in bits
	const int Address_Size = 32; // Number of bits used in the memory address
	const int Column_Bits = 3; // Number of bits used to dereference a coloumn in SDRAM
	const int Words_Per_Bus_Transfer = 2; // Number of words transfered per CAS.
	const int CAS = 10; // CAS time in clock cycles
	const int RAS = 10; // RAS time in clock cycles

	// Redifined Input Aruguments
	const int Data_Size = Data_Size_kB * 1024 * 8; // bits

	// Calculated Aruguments
	const int Sets = Data_Size / Word_Size / Words_Per_Bock / Ways;
	const int Lines = Sets; // Number of lines per way in the cache (derived from Index_Size)
	const int Blocks_Per_Set = Ways;
	const int Index_Size = log((float)Sets)/log(2.0); // Number of bits used to create the index
	const int Address_Bits_Per_Block = log((float)Words_Per_Bock) / log(2.0); // Address bits used to derefence a word in a block
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block + 2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)

	const int Blocks = Blocks_Per_Set * Sets;
	const int Block_size = Words_Per_Bock * Word_Size;
	const int Cache_Size = Blocks * Block_size;

	// Verify Cache Size with Data Size
	cout << "Cache Size: " << (Cache_Size / 8 / 1024) << "kB" << endl;
	cout << "Sets: " << Sets << endl;
	cout << "Index_Size: " << Index_Size << "bit" << endl;
	cout << "Tag_Bits: " << Tag_Bits << "bit" << endl;
	cout << "Address_Bits_Per_Block: " << Address_Bits_Per_Block << "bit" << endl;
	cout << "=====================================" << endl;

	boolean** Valid = new boolean*[Ways];	// Array to store Valid Bits
	for (int i = 0; i < Ways; i++)
		Valid[i] = new boolean[Lines];

	int** Tag = new int*[Ways];		// Array to store Tag bits.
	for (int i = 0; i < Ways; i++)
		Tag[i] = new int[Lines];

	int** LRU = new int*[Ways];	// Array to store LRU Bits
	for (int i = 0; i < Ways; i++)
		LRU[i] = new int[Lines];
	for (int i = 0; i < Lines; i++)
	{
		for (int j = 0; j < Ways; j++)
			LRU[j][i] = j;
	}

	int** LRU_Previous = new int*[Ways];	// Array to store LRU Bits
	for (int i = 0; i < Ways; i++)
		LRU_Previous[i] = new int[Lines];


	// Declare any required variables in this section
	unsigned long long int time = 0;
	unsigned long long int instruction_counter = 0;
	int Matrix_Size_fixed = 4;
	ofstream Result_File("Cache_Sim.csv", ios::app);
	ofstream Detail_File("Cache_Sim_Detail.csv", ios::app);
	Result_File << "Ways" << "," << "Data_Size_kB" << "," << "Words_Per_Bock" << "," << "Hit_Time" << ","
				<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << "," << "Hit_Time" << ","
				<< endl
				<< Ways << "," << Data_Size_kB << "," << Words_Per_Bock << "," << Hit_Time << ","
				<< Sets << "," << Index_Size << "," << Tag_Bits << "," << Hit_Time << ","
				<< endl
				<< "Hit_A" << "," << "Miss_A_CAS" << "," << "Miss_A_RAS" << "," << "Hit_A_Percentage" << ","
				<< "Hit_B" << "," << "Miss_B_CAS" << "," << "Miss_B_RAS" << "," << "Hit_B_Percentage" << ","
				<< "Miss_C_CAS" << "," << "Miss_C_RAS" << ","
				<< endl;
	Detail_File << "Ways" << "," << "Data_Size_kB" << "," << "Words_Per_Bock" << "," << "Hit_Time" << ","
				<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << "," << "Hit_Time" << ","
				<< endl
				<< Ways << "," << Data_Size_kB << "," << Words_Per_Bock << "," << Hit_Time << ","
				<< Sets << "," << Index_Size << "," << Tag_Bits << "," << Hit_Time << ","
				<< endl
				<< "Matrix_Size" << ","
				<< "Hit_A" << "," << "Miss_A_CAS" << "," << "Miss_A_RAS" << "," << "Hit_A_Percentage" << ","
				<< "Hit_B" << "," << "Miss_B_CAS" << "," << "Miss_B_RAS" << "," << "Hit_B_Percentage" << ","
				<< "Miss_C_CAS" << "," << "Miss_C_RAS" << ","
				<< endl;
	// For counting result
	unsigned long long int total_instruction = 0;
	unsigned long long int A_hit_total = 0;
	unsigned long long int A_RAS_total = 0;
	unsigned long long int A_CAS_total = 0;
	unsigned long long int B_hit_total = 0;
	unsigned long long int B_RAS_total = 0;
	unsigned long long int B_CAS_total = 0;
	unsigned long long int C_RAS_total = 0;
	unsigned long long int C_CAS_total = 0;

	for (int Matrix_Size = Debug_Mode ? Matrix_Size_fixed : 2; Matrix_Size <= (Debug_Mode?Matrix_Size_fixed:100); Matrix_Size++) // Step through all matrix sizes
	//for (int Matrix_Size = Matrix_Size_fixed; Matrix_Size <= Matrix_Size_fixed; Matrix_Size++) // Step through all matrix sizes
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
		unsigned long long int Start_Pointer_A = 100000;
		unsigned long long int Start_Pointer_B = 200000;
		unsigned long long int Start_Pointer_C = 300000;
		const int DRAM_Row_Size = 2 * 32 * 8;
		boolean hit_A = false;
		boolean hit_B = false;
		boolean hit_C = false;
		unsigned long long int hit_A_counter = 0;
		unsigned long long int A_RAS_counter = 0;
		unsigned long long int A_CAS_counter = 0;
		unsigned long long int hit_B_counter = 0;
		unsigned long long int B_RAS_counter = 0;
		unsigned long long int B_CAS_counter = 0;
		unsigned long long int hit_C_counter = 0;
		unsigned long long int C_RAS_counter = 0;
		unsigned long long int C_CAS_counter = 0;
		boolean Previous_RAM_Row_Valid_A = false;
		boolean Previous_RAM_Row_Valid_B = false;
		boolean Previous_RAM_Row_Valid_C = false;
		unsigned long long int Current_RAM_Row_A = 0;
		unsigned long long int Previous_RAM_Row_A = 0;
		unsigned long long int Current_RAM_Row_B = 0;
		unsigned long long int Previous_RAM_Row_B = 0;
		unsigned long long int Current_RAM_Row_C = 0;
		unsigned long long int Previous_RAM_Row_C = 0;
		int Update_Way = 0;
		boolean LRU_Enable = false;
		boolean Random_Ways = true;

		time += 10; // Add delay that exists before entering main loop
		for (unsigned long int i = 0; i < Matrix_Size; i++)
		{
			time += 10; // Add outer loop delay 
			for (unsigned long int j = 0; j < Matrix_Size; j++)
			{
				time += 10; // Add middle loop delay 

				for (unsigned long int k = 0; k < Matrix_Size; k = k++)
				{
					instruction_counter++;
					// Add inner loop delay.
					time += 10;

					// Calculate Read Address for Matrix A[i][k]
					unsigned long long int Read_Address_A = (Start_Pointer_A + k + i*Matrix_Size) << 2;// Calculate next lw address for matrix A
					unsigned long long int Read_Address_B = (Start_Pointer_B + k*Matrix_Size + j) << 2;// Calculate next lw address for matrix B
					unsigned long long int Read_Address_C = (Start_Pointer_C + j + i*Matrix_Size) << 2;// Calculate next lw address for matrix C

					if (Debug_Mode)
						cout <<  "A: " << Read_Address_A << ", Tag: " << Read_Address_A / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_A / (Block_size / 8)) % Sets
							<< ". B: " << Read_Address_B << ", Tag: " << Read_Address_B / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_B / (Block_size / 8)) % Sets
							<< ". C: " << Read_Address_C << ", Tag: " << Read_Address_B / ((Block_size / 8) * Sets) << ", Index: " << (Read_Address_B / (Block_size / 8)) % Sets
							<< endl;

					// Calculate Tag
					unsigned long long int Read_Tag_A = Read_Address_A / ((Block_size / 8) * Sets);
					unsigned long long int Read_Tag_B = Read_Address_B / ((Block_size / 8) * Sets);
					unsigned long long int Write_Tag_C = Read_Address_C / ((Block_size / 8) * Sets);

					// Calculate Index
					unsigned long long int Index_A = (Read_Address_A / (Block_size / 8)) % Sets;
					unsigned long long int Index_B = (Read_Address_B / (Block_size / 8)) % Sets;
					unsigned long long int Index_C = (Read_Address_C / (Block_size / 8)) % Sets;

					// Deference Index for each way and check each tag and valid bit.
					for (unsigned long int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (Valid[l][Index_A] & (Tag[l][Index_A] == Read_Tag_A))
							hit_A = true;
						else if (!Valid[l][Index_A] | (Tag[l][Index_A] != Read_Tag_A))
							hit_A = false;
						if (Valid[l][Index_B] & (Tag[l][Index_B] == Read_Tag_B))
							hit_B = true;
						else if (!Valid[l][Index_B] | (Tag[l][Index_B] != Read_Tag_B))
							hit_B = false;
					}
					hit_C = false;

					if (hit_A)
					{
						time += Hit_Time;// If hit, add hit time
						hit_A_counter++;
						if (Debug_Mode)
							cout << "A Hit! " << "hit_A_counter: " << hit_A_counter << endl;
					}
					else
					{
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row_A = Read_Address_A / DRAM_Row_Size;
						if (Previous_RAM_Row_Valid_A & (Current_RAM_Row_A == Previous_RAM_Row_A) )
						{
							time += CAS; // Caculate number of CAS delays needed.
							A_CAS_counter++;
							if (Debug_Mode)
								cout << "A Miss! " << "CAS Only" << endl;
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row_A = Current_RAM_Row_A; // Update RAM row
							time += (CAS+RAS); // Calculate RAS and CAS delays needed.
							A_CAS_counter++;
							A_RAS_counter++;
							if (Debug_Mode)
								cout << "A Miss! " << "CAS & RAS" << endl;
						}
						Previous_RAM_Row_Valid_A = true; // On power up, a RAS is always needed.

						// Update Cache with new data
						
						if (LRU_Enable)
							Update_Way = LRU[Ways - 1][Index_A];// Choose your way strategy (random,LRU, ~LRU)
						if (Random_Ways)
							Update_Way = rand() % Ways; // range 0 to Ways
						if (Debug_Mode)
							cout << "Update_Way: " << Update_Way << endl;

						Valid[Update_Way][Index_A] = true; // Write to the way you chose in previous line
						Tag[Update_Way][Index_A] = Read_Tag_A; // Write to the way you chose in previous line

						if (Debug_Mode & LRU_Enable)
						{
							cout << "LRU[" << Index_A << "] :";
							for (int i = 0; i < Ways; i++)
								cout << " " << LRU[i][Index_A] << " ";
							cout << endl;
						}
						if ( (LRU[0][Index_A] != Update_Way) & LRU_Enable)
						{
							for (int i = 0; i < Ways; i++) {
								LRU_Previous[i][Index_A] = LRU[i][Index_A];
							}
							for (int i = 0; i < Ways; i++)	// Update LRU order
							{
								if (!i)
									LRU[i][Index_A] = Update_Way;
								else if ( (LRU_Previous[i][Index_A] != Update_Way) | (Update_Way==(Ways-1)) )
									LRU[i][Index_A] = LRU_Previous[i - 1][Index_A];
								else
									LRU[i][Index_A] = LRU_Previous[i][Index_A];

							}
						}
						if (Debug_Mode  & LRU_Enable)
						{
							if (LRU)
							cout << "LRU[" << Index_A << "] :";
							for (int i = 0; i < Ways; i++)
								cout << " " << LRU[i][Index_A] << " ";
							cout << endl;
						}
					}

					if (hit_B)
					{
						time += Hit_Time;// If hit, add hit time
						hit_B_counter++;
						if (Debug_Mode)
							cout << "B Hit! " << "hit_B_counter: " << hit_B_counter << endl;
					}
					else
					{
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row_B = Read_Address_B / DRAM_Row_Size;
						if (Previous_RAM_Row_Valid_B & (Current_RAM_Row_B == Previous_RAM_Row_B))
						{
							time += CAS; // Caculate number of CAS delays needed.
							B_CAS_counter++;
							if (Debug_Mode)
								cout << "B Miss! " << "CAS Only" << endl;
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row_B = Current_RAM_Row_B; // Update RAM row
							time += (CAS+RAS); // Calculate RAS and CAS delays needed.
							B_CAS_counter++;
							B_RAS_counter++;
							if (Debug_Mode)
								cout << "B Miss! " << "CAS & RAS" << endl;
						}
						Previous_RAM_Row_Valid_B = true; // On power up, a RAS is always needed.

						// Update Cache with new data
						if (LRU_Enable)
							Update_Way = LRU[Ways - 1][Index_B];// Choose your way strategy (random,LRU, ~LRU)
						if (Random_Ways)
							Update_Way = rand() % Ways; // range 0 to Ways
						if (Debug_Mode)
							cout << "Update_Way: " << Update_Way << endl;

						Valid[Update_Way][Index_B] = true; // Write to the way you chose in previous line
						Tag[Update_Way][Index_B] = Read_Tag_B; // Write to the way you chose in previous line

						if (Debug_Mode & LRU_Enable)
						{
							cout << "LRU[" << Index_B << "] :";
							for (int i = 0; i < Ways; i++)
								cout << " " << LRU[i][Index_B] << " ";
							cout << endl;
						}
						if ((LRU[0][Index_B] != Update_Way)  & LRU_Enable)
						{
							for (int i = 0; i < Ways; i++) {
								LRU_Previous[i][Index_B] = LRU[i][Index_B];
							}
							for (int i = 0; i < Ways; i++)	// Update LRU order
							{
								if (!i)
									LRU[i][Index_B] = Update_Way;
								else if ((LRU_Previous[i][Index_B] != Update_Way) | (Update_Way == (Ways - 1)))
									LRU[i][Index_B] = LRU_Previous[i - 1][Index_B];
								else
									LRU[i][Index_B] = LRU_Previous[i][Index_B];

							}
						}
						if (Debug_Mode & LRU_Enable)
						{
							cout << "LRU[" << Index_B << "] :";
							for (int i = 0; i < Ways; i++)
								cout << " " << LRU[i][Index_B] << " ";
							cout << endl;
						}
					}
					if (hit_C)
					{
						cerr <<  "ERROR! C cannot be hit!" << endl;
					}
					else
					{
						// Calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row_C = Read_Address_C / DRAM_Row_Size;
						if (Previous_RAM_Row_Valid_C & (Current_RAM_Row_C == Previous_RAM_Row_C))
						{
							time += 2*CAS; // Caculate number of CAS delays needed.
							C_CAS_counter += 2;
							if (Debug_Mode)
								cout << "C Miss! " << "CAS Only" << endl;
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row_C = Current_RAM_Row_C; // Update RAM row
							time += (2*CAS + RAS); // Calculate RAS and CAS delays needed.
							C_CAS_counter += 2;
							C_RAS_counter++;
							if (Debug_Mode)
								cout << "C Miss! " << "CAS & RAS" << endl;
						}
						Previous_RAM_Row_Valid_C = true; // On power up, a RAS is always needed.
					}

				}
				if (Debug_Mode)
					cout << "------------------------------------------" << endl;
			}




		}
		total_instruction += instruction_counter;
		A_hit_total += hit_A_counter;
		A_CAS_total += A_CAS_counter;
		A_RAS_total += A_RAS_counter;
		B_hit_total += hit_B_counter;
		B_CAS_total += A_CAS_counter;
		B_RAS_total += A_RAS_counter;
		C_CAS_total += A_CAS_counter;
		C_RAS_total += A_RAS_counter;

		cout << "Matrix_Size: " << Matrix_Size
			<< ", hit_A=" << hit_A_counter << "/" << instruction_counter << "=" << std::fixed << std::setprecision(3) << ((double)hit_A_counter / (double)instruction_counter) * 100 << "%"
			<< " CAS=" << A_CAS_counter << "/" << instruction_counter << " RAS=" << A_RAS_counter << "/" << instruction_counter
			<< ", hit_B=" << hit_B_counter << "/" << instruction_counter << "=" << std::fixed << std::setprecision(3) << ((double)hit_B_counter / (double)instruction_counter) * 100 << "%"
			<< " CAS=" << B_CAS_counter << "/" << instruction_counter << " RAS=" << B_RAS_counter << "/" << instruction_counter
			<< endl;
		Detail_File << Matrix_Size << ","
					<< A_hit_total << "," << A_CAS_total << "," << A_RAS_total << "," << (double)A_hit_total / (double)total_instruction * 100 << ","
					<< B_hit_total << "," << B_CAS_total << "," << B_RAS_total << "," << (double)B_hit_total / (double)total_instruction * 100 << ","
					<< C_CAS_total << "," << C_RAS_total << ","
					<< endl;

		if (Matrix_Size == 256)
		{
			cout << endl;
			cout << "Total:"
				<< ", hit_A=" << A_hit_total << "/" << total_instruction << "=" << std::fixed << std::setprecision(3) << (double)A_hit_total / (double)total_instruction * 100 << "%"
				<< ", hit_B=" << B_hit_total << "/" << total_instruction << "=" << std::fixed << std::setprecision(3) << (double)B_hit_total / (double)total_instruction * 100 << "%"
				<< endl;
			Result_File << A_hit_total << "," << A_CAS_total << "," << A_RAS_total << "," << (double)A_hit_total / (double)total_instruction * 100 << ","
						<< B_hit_total << "," << B_CAS_total << "," << B_RAS_total << "," << (double)B_hit_total / (double)total_instruction * 100 << ","
						<< C_CAS_total << "," << C_RAS_total << ","
						<< endl;
		}

		instruction_counter = 0;
		hit_A_counter = 0;
		A_CAS_counter = 0;
		A_RAS_counter = 0;
		hit_B_counter = 0;
		B_CAS_counter = 0;
		B_RAS_counter = 0;
		C_CAS_counter = 0;
		C_RAS_counter = 0;

		if (Debug_Mode)
			cout << "================================================" << endl;
	} // end matrix size interation
	
	return 0;
}


int _tmain(int argc, _TCHAR* argv[]) // Some of the below constants you might want to pass as program arguments
{
	int Debug_Mode = 0;
	remove("Cache_Sim.csv");
	remove("Cache_Sim_Detail.csv");

	// Ways, Data_Size_kB, Words_Per_Bock, Hit_Time
	if (Debug_Mode)
		cache_simulator(4, 4, 1, 10, Debug_Mode);
	else
	{
		
		cache_simulator(1, 8, 2, 2, Debug_Mode);
		cache_simulator(1, 32, 2, 2, Debug_Mode);
		cache_simulator(1, 512, 2, 3, Debug_Mode);
		
		cache_simulator(1, 8, 8, 1, Debug_Mode);
		cache_simulator(1, 32, 8, 2, Debug_Mode);
		cache_simulator(1, 512, 8, 3, Debug_Mode);
		
		cache_simulator(4, 8, 2, 1, Debug_Mode);
		cache_simulator(4, 32, 2, 2, Debug_Mode);
		cache_simulator(4, 512, 2, 3, Debug_Mode);

		cache_simulator(4, 8, 8, 1, Debug_Mode);
		cache_simulator(4, 32, 8, 2, Debug_Mode);
		cache_simulator(4, 512, 8, 3, Debug_Mode);
		
	}

	std::cin.get();
	return 0;
}


