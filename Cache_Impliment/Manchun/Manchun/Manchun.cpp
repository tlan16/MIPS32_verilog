// Cache_Sim_Pseudo_Template :
// This file contains a very basic template that can be used to build a simple
// cache simulator required for ECE4074 assignment 2.
// Constants and variables used below are simply a guide to students
// on how to implement the design. Many enhancements can be done by 
// diverging from the structure presented below.


#include "stdafx.h"
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <bitset>
#include <iomanip>
#define _WIN32_WINNT 0x0602
#include <windows.h>
using namespace std;

int sim(int Data_size_in_bits, int Associative_in_bits, int Word_per_block_in_bits, int Hit_Time_in_clock) // Some of the below constants you might want to pass as program arguments
// size is in bit, can only be 13 or 15 or 19, associative can only be 0 and 2, word_per_block_in_bits should be 1 or 3
{
	const int Data_Size_kB = (1 << Data_size_in_bits) / 1024;
	const int Words_per_block = 1 << Word_per_block_in_bits;



	const int Ways = 1 << Associative_in_bits; //  Number of ways for simulation
	const int Index_Size = Data_size_in_bits - 2 - Word_per_block_in_bits - Associative_in_bits; // Number of bits used to create the index
	// The Index_Size is calculated by the Data size in number of bits - byte offset - words per block in number of bits - associative in number of bits

	const int Lines = 1 << Index_Size; // Number of lines per way in the cache (derived from Index_Size)
	const int Address_Size = 32; // Number of bits used in the memory address
	const int Word_Size = 4; // Size of words in bytes
	const int Address_Bits_Per_Block = Word_per_block_in_bits; // Address bits used to derefence a word in a block
	const int Words_Per_Block = 1 << Address_Bits_Per_Block; // Number of words per block (derived from address bits per block)
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block + 2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)
	const int Hit_Time = Hit_Time_in_clock; // Hit_Time (in clock cycles)
	const int Column_Bits = 3; // Number of bits used to dereference a coloumn in SDRAM
	const int Words_Per_Bus_Transfer = 2; // Number of words transfered per CAS.

	const int CAS = 24; // CAS time in clock cycles
	const int RAS = 72; // RAS time in clock cycles
	const int DRAM_Word_per_column = 2;
	const int DRAM_Columns_per_row = 8;
	const int DRAM_Columns_address = (log(DRAM_Word_per_column) / log(2)) + (log(DRAM_Columns_per_row) / log(2)) + 2; // 2 is byte off set

	const int block_size = Word_Size * Words_Per_Block;
	const int block_number = Lines * Ways;
	int Cache_size = block_size * block_number / 1024;

	cerr << "Index Bits: " << Index_Size << endl;
	cerr << "Tag Bits:" << Tag_Bits << endl;
	cerr << "Words_Per_Block:" << Words_Per_Block << endl;
	cerr << "Lines: " << Lines << endl;
	cerr << "Ways: " << Ways << endl;


	cerr << "Cache Size: " << Cache_size/* Advisable to calculate and check your cache size */ << "kB \n" << endl;

	bool** Valid = new bool*[Ways]; 	// Array to store Valid bits.
	for (int i = 0; i < Ways; i++)
		Valid[i] = new bool[Lines];

	int** Tag = new int*[Ways];		// Array to store Tag bits.
	for (int i = 0; i < Ways; i++)
		Tag[i] = new int[Lines];

	int* LRU = new int[Ways];			// Array to store LRU bits.
	for (int i = 0; i < Ways; i++){	// Initialize the LRU bits. For 1 Way LRU is a array with 1 element
		LRU[i] = i;					// For 4 Ways, LRU is a array with 4 elements
	}

	// Declare any required variables in this section
	double time = 0;
	int total_hit_A = 0;
	int total_hit_B = 0;
	int total_hit_C = 0;
	int total_miss_A = 0;
	int total_miss_B = 0;
	int total_miss_C = 0;
	int total_CAS = 0;
	int total_RAS = 0;
	int total_AB_count = 0;

	// Variable for debugging
	bool address_check = 1;

	// Output result to excel
	ofstream Result_File("Cache_Sim.csv", ios::app);
	ofstream Detail_File("Cache_Sim_Detail.csv", ios::app);
	Result_File << "Ways" << "," << "Data_Size_kB" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << "," << "Hit_Time" << ","
		<< endl
		<< Ways << "," << Data_Size_kB << "," << Words_per_block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << "," << Hit_Time << ","
		<< endl
		<< "Hit_A" << "," << "Hit_A_Percentage" << ","
		<< "Hit_B" << "," << "Hit_B_Percentage" << ","
		<< "Hit_C" << ","
		<< "Total_CAS" << "," << "Total_RAS" << ","
		<< "Time" << ","
		<< endl;
	Detail_File << "Ways" << "," << "Data_Size_kB" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << "," << "Hit_Time" << ","
		<< endl
		<< Ways << "," << Data_Size_kB << "," << Words_per_block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << "," << Hit_Time << ","
		<< endl
		<< "Matrix_Size" << "," << "Instruction Count" << ","
		<< "Hit_A" << "," << "Hit_A_Percentage" << ","
		<< "Hit_B" << "," << "Hit_B_Percentage" << ","
		<< "Hit_C" << ","
		<< "Total_CAS" << "," << "Total_RAS" << ","
		<< endl;

	// Loop for whole calculation
	for (int Matrix_Size = 2; Matrix_Size <= 2; Matrix_Size++) // Step through all matrix sizes
	{

		// Initialize Cache as being empty
		for (int i = 0; i<Ways; i++)
		{
			for (int j = 0; j<Lines; j++)
			{
				Valid[i][j] = 0;/* Student to add*/
			}
		}

		// Matrix array pointers
		int Start_Pointer_A = 100000;
		int Start_Pointer_B = 200000;
		int Start_Pointer_C = 300000;

		// Initialize and declare variable 
		int hit_A_count = 0;
		int hit_B_count = 0;
		int hit_C_count = 0;
		int miss_A_count = 0;
		int miss_B_count = 0;
		int miss_C_count = 0;
		int CAS_count = 0;
		int RAS_count = 0;
		int Current_RAM_Row = 0;
		int Previous_RAM_Row = 0;
		bool Previous_RAM_Row_Valid = 0;
		int Update_Way = 0;
		unsigned int Read_Address_A;
		unsigned int Read_Tag_A;
		unsigned int Index_A;
		unsigned int Read_Address_B;
		unsigned int Read_Tag_B;
		unsigned int Index_B;
		unsigned int Write_Address_C;
		unsigned int Write_Tag_C;
		unsigned int Index_C;
		bool hit_A = false;
		bool hit_B = false;
		bool hit_C = false;
		int AB_count = 0;

		time += 1; // Add delay that exists before entering main loop
		for (int i = 0; i<Matrix_Size; i++)
		{
			time += 1; // Add outer loop delay 
			for (int j = 0; j<Matrix_Size; j++)
			{
				time += 1; // Add middle loop delay 

				for (int k = 0; k<Matrix_Size; k = k++)
				{
					AB_count++;
					// Add inner loop delay.
					time += 1;

					// Calculate Read Address for Matrix A[i][k]
					Read_Address_A = Start_Pointer_A + ((i*Matrix_Size + k) << 2);// Calculate next lw address for matrix A

					// Calculate Tag
					Read_Tag_A = Read_Address_A >> (2 + Address_Bits_Per_Block + Index_Size);

					// Calculate Index
					Index_A = (Read_Address_A - (Read_Tag_A << (2 + Address_Bits_Per_Block + Index_Size))) >> (2 + Address_Bits_Per_Block);

					// For debugging
					if (address_check){
						cerr << "Matrix_size:" << Matrix_Size << endl;
						cerr << "Read_Address_A:" << Read_Address_A << endl;
						cerr << "Read_Tag_A:" << Read_Tag_A << endl;
						cerr << "Index_A:" << Index_A << "\n" << endl;
					}	// end address_check

					// Deference Index for each way and check each tag and valid bit.
					hit_A = false;
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (Valid[l][Index_A] & (Tag[l][Index_A] == Read_Tag_A))
						{
							hit_A = true;
						}
					}

					if (hit_A)
					{
						time += Hit_Time;// If hit, add hit time
						hit_A_count++;// Student may want to count the number of hits.
					}
					else
					{
						miss_A_count++;
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row = Read_Address_A >> DRAM_Columns_address;
						if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
						{
							time += (2 + CAS); // Caculate number of CAS delays needed.
							CAS_count++;
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row = Current_RAM_Row; // Update RAM row
							time += (2 + CAS + RAS); // Calculate RAS and CAS delays needed.
							CAS_count++;
							RAS_count++;
						}
						Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

						// Update Cache with new data
						// Update_Way was initialized to 0, way 0 would be updated first
						// cerr << "Update_Way" << Update_Way << " Index_A" << Index_A << endl;
						Valid[Update_Way][Index_A] = true; // Write to the way you chose in previous line
						Tag[Update_Way][Index_A] = Read_Tag_A; // Write to the way you chose in previous line
						if (Update_Way < Ways - 1){
							Update_Way++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
						}
						else Update_Way = 0;
					}


					// Repeat for B; B[k][j]
					Read_Address_B = Start_Pointer_B + (j + k*Matrix_Size << 2); // Calculate Next LW address for matrix B

					// Calculate Tag
					Read_Tag_B = Read_Address_B >> (2 + Address_Bits_Per_Block + Index_Size);

					// Calculate Index
					Index_B = (Read_Address_B - (Read_Tag_B << (2 + Address_Bits_Per_Block + Index_Size))) >> (2 + Address_Bits_Per_Block);
					if (address_check){
						cerr << "Matrix_size:" << Matrix_Size << endl;
						cerr << "Read_Address_B:" << Read_Address_B << endl;
						cerr << "Read_Tag_B:" << Read_Tag_B << endl;
						cerr << "Index_B:" << Index_B << "\n" << endl;
					}	// end address_check
					// Deference Index for each way and check each tag and valid bit.
					hit_B = false;
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (Valid[l][Index_B] & (Tag[l][Index_B] == Read_Tag_B))
						{
							hit_B = true;
						}
					}

					if (hit_B)
					{
						time += Hit_Time;// If hit, add hit time
						hit_B_count++;// Student may want to count the number of hits.
					}
					else
					{
						miss_B_count++;
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row = Read_Address_B >> DRAM_Columns_address;
						if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
						{
							time += (2 + CAS); // Caculate number of CAS delays needed.
							CAS_count++;
						}
						else // Need RAS and CAS
						{
							Previous_RAM_Row = Current_RAM_Row; // Update RAM row
							time += (2 + CAS + RAS); // Calculate RAS and CAS delays needed.
							CAS_count++;
							RAS_count++;
						}
						Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

						// Update Cache with new data
						// cerr << "Update_Way" << Update_Way << " Index_B" << Index_B << endl;
						Valid[Update_Way][Index_B] = true; // Write to the way you chose in previous line
						Tag[Update_Way][Index_B] = Read_Tag_B; // Write to the way you chose in previous line
						if (Update_Way < Ways - 1){
							Update_Way++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
						}
						else Update_Way = 0;
					}

					time += 1; // Take 1 clock cycle to get the Sum
					//Sum += A[i][k]*B[k][j];
				}



				//C[i][j] = Sum;
				// Assume write through;
				// Calculate Write Address;
				Write_Address_C = Start_Pointer_C + ((j + i*Matrix_Size) << 2);

				// Calculate Tag
				Write_Tag_C = Write_Address_C >> (2 + Address_Bits_Per_Block + Index_Size);

				// Calculate Index
				Index_C = (Write_Address_C - (Write_Tag_C << (2 + Address_Bits_Per_Block + Index_Size))) >> (2 + Address_Bits_Per_Block);

				// Deference Index for each way and check each tag and valid bit.
				hit_C = false;
				for (int l = 0; l<Ways; l = l + 1) // Check each way
				{
					if (Valid[l][Index_C] & (Tag[l][Index_C] == Write_Tag_C))
					{
						hit_C = true;
					}
				}

				if (hit_C) // Still need to write through
				{
					time += Hit_Time;// If hit, add hit time
					hit_C_count++;// Student may want to count the number of hits.

					// As write through there is always some DRAW interaction
					// Calculate RAM row.
					Current_RAM_Row = Write_Address_C >> DRAM_Columns_address;
					if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
					{
						time += (2 * CAS); // Caculate number of CAS delays needed.
						CAS_count++;
					}
					else // Need RAS and CAS
					{
						Previous_RAM_Row = Current_RAM_Row; // Update RAM row
						time += ((2 * CAS) + RAS); // Calculate RAS and CAS delays needed.
						CAS_count++;
						RAS_count++;
					}
				}
				else // Need to write through and update cache
				{
					miss_C_count++;
					// Calculate RAM row.
					Current_RAM_Row = Write_Address_C >> DRAM_Columns_address;
					if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
					{
						time += (2 + (2 * CAS)); // Caculate number of CAS delays needed.
						CAS_count++;
					}
					else // Need RAS and CAS
					{
						Previous_RAM_Row = Current_RAM_Row; // Update RAM row
						time += (2 + (2 * CAS) + RAS); // Calculate RAS and CAS delays needed.
						CAS_count++;
						RAS_count++;
					}

					// Update Cache with new data
					// cerr << "Update_Way" << Update_Way << " Index_C" << Index_C << endl;
					Valid[Update_Way][Index_C] = true; // Write to the way you chose in previous line
					Tag[Update_Way][Index_C] = Write_Tag_C; // Write to the way you chose in previous line
					if (Update_Way < Ways - 1){
						Update_Way++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
					}
					else Update_Way = 0;
				}

			}
		}


		// cerr << Matrix_Size << endl; // Keep track of your programs execution. Be careful in writing your code, this simulation can get slow very easily

		// Some useful data should be written to file here recommend using cout here
		// and runing program using a command like "cache_sim.exe >> results.csv" to
		// save development time and make it easy to use results in excel.
		// eg: cout << Matrix_Size << ',' << time << ',' << hit_percentage << endl;

		total_hit_A += hit_A_count;
		total_hit_B += hit_B_count;
		total_hit_C += hit_C_count;
		total_miss_A += miss_A_count;
		total_miss_B += miss_B_count;
		total_miss_C += miss_C_count;
		total_CAS += CAS_count;
		total_RAS += RAS_count;
		total_AB_count += AB_count;
		Detail_File << Matrix_Size << "," << AB_count << ","
			<< hit_A_count << "," << (double)hit_A_count / (double)AB_count * 100 << ","
			<< hit_B_count << "," << (double)hit_B_count / (double)AB_count * 100 << ","
			<< hit_C_count << ","
			<< CAS_count << "," << RAS_count << ","
			<< endl;
	}

	Result_File << total_hit_A << "," << (double)total_hit_A / (double)total_AB_count * 100 << ","
		<< total_hit_B << "," << (double)total_hit_B / (double)total_AB_count * 100 << ","
		<< total_hit_C << ","
		<< total_CAS << "," << total_RAS << ","
		<< time << ","
		<< endl;


	return 0;
}

int main(){
	remove("Cache_Sim.csv");
	remove("Cache_Sim_Detail.csv");

	sim(15, 0, 1, 2);
	sim(19, 0, 1, 3);
	sim(13, 0, 3, 1);
	sim(15, 0, 3, 2);
	sim(19, 0, 3, 3);
	sim(13, 2, 1, 1);
	sim(15, 2, 1, 2);
	sim(19, 2, 1, 3);
	sim(13, 2, 3, 1);
	sim(15, 2, 3, 2);
	sim(19, 2, 3, 3);
	sim(19, 2, 4, 3);
	cerr << "end" << endl;
	std::cin.get();




	return 0;
}