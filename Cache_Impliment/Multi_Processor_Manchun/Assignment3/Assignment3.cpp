// Author: Damien Browne
// This is a pseduo code template for use in ECE4074 for students to complete assignment 3.
// An explanation of the operation of the code is seen in the assignment description.

#include <vector>
#include "stdio.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <cstring>
#include <string>
using namespace std;

// Function to calculating all the address needed to be compute for all cores.
int** address_cal(int num_p, char method){
// The address_cal is a function to calculate the address for each core to access in a 50x50 matrix
// num_p is the number of processor 
// method can only be 'r' for row increament or 'c' for column increament or 'o' for one by one
	bool address_file_enable = false;
	remove("address_cal.csv");
	
	ofstream Address_File("address_cal.csv", ios::app);
	if (address_file_enable){
		
		for (int i = 0; i < num_p; i++){
			Address_File << i << ",";
		}
		Address_File << endl;
	}

	// cerr << "Calculating Address for " << num_p << " processor"<< endl;
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

	// initialize all address
	for (int i = 0; i < num_p; i++){
		for (int j = 0; j < 300000; j++){
			address[i][j] = 0;
		}
	}
	for (int c = 0; c < 2500; c++){
		m = c / 50;
		n = c % 50;
		
		if (method == 'r') {
			if ((c != 0) && (c % 50 == 0)) p++;
			if (p == num_p) p = 0;
		}
		if ((c != 0) && (method == 'c') && (c % 50 == 0))
		{
			p = 0;
		}

		for (int i = 0; i < 50; i++){
			address[p][add_pos[p]] = Start_Pointer_A + ((m * 50 + i) << 2); // matrix A address
			//cerr << address[p][add_pos[p]] << "  ";
			add_pos[p]++;
			address[p][add_pos[p]] = Start_Pointer_B + ((n + i*50) << 2); // matrix B address
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
		
		if ((method == 'o') || (method == 'c'))
		{
			p++;
			if (p == num_p) p = 0;
		}

		if (!((method == 'c') || (method == 'r') || (method == 'o')))
		{
			cerr << "No such method, error occur" << endl;
			std::cin.get();
			break;
		}

		
	}


	for (int i = 0; i < num_p; i++){
		add_pos[i] = 0;
	}

	if (address_file_enable){
		for (int j = 0; j < 300000; j++){

			for (int i = 0; i < num_p; i++){
				Address_File << address[i][add_pos[i]] << ",";
				add_pos[i]++;
			}
			Address_File << endl;
		}
	}
	return address;
	
}

void matrix_multi(int Data_size_in_bits, int Hit_Time_in_clock, int num_p, string result_file_name, char method){

	cerr << "\n" << endl;
	cerr << "Number of processor: " << num_p << endl;
	cerr << "Matrix multi start:" << (1 << Data_size_in_bits) / 1024 << "kB" << endl;
	// size is in bit, can only be 13 or 15 or 19, associative can only be 0 and 2, word_per_block_in_bits should be 1 or 3
	// A copy of function arguments in assignment2 to make less modification 
	int Associative_in_bits = 2;		
	int Word_per_block_in_bits = 2; 


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

	string detail_file_name = "Detail_" + to_string(num_p) + "P" + "_" + method + "_" + to_string(Data_Size_kB) + "kB" + ".csv";
	remove(detail_file_name.c_str());
	ofstream Result_File(result_file_name, ios::app);
	ofstream Detail_file(detail_file_name.c_str(), ios::app);

	Detail_file << "Number of Processors" << "," << "Method" << "," << "Cache Size" << "," << "Ways" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << ","
		<< endl
		<< num_p << "," << method << "," << Data_Size_kB / 1024 << "," << Ways << "," << Words_Per_Block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << ","
		<< endl;

	
// Variable for multi-processing
	unsigned long global_clk = 0;	// global clock is used to sync different processor
	unsigned long DRAM_wait_time = 0;	// Time when DRAM is free
	unsigned long* time_resume = new unsigned long[num_p];	// time to resume processing for different processor
	int* proc_state = new int[num_p];	// current state of processor
	// proc_state is used to control the state of different processor
	// 1 for get matrix A, 2 for get matrix B, 3 for store C, 0 for finished
	// The processor should do (A->B)x50 then C,
	// after all C haved been calculated, the state is 0 and wait for all processor finish
	int instruction_count = 0; // count every time accessing memory, the number should be 252500 when the loop exit
	int end_cal = 0; // To control the end of calculation, it count the number of processor finished calcualtion

	int **address = address_cal(num_p, method);	// Calculating the address and the order for each core
	int *address_count = new int[num_p]; // Address count, use to trace the current address for each processor

	
	//initialize the variable 
	for (int i = 0; i < num_p; i++){
		time_resume[i] = 0;		// time_resume would b 0 at start
		proc_state[i] = 1;	// all processor should read address of matrix A at start
		address_count[i] = 0; // All processor should read the first address at start
	}

// Variable for cache
		bool*** Valid = new bool**[num_p]; 	// 3D Array to store Valid bits.
			for (int i = 0; i < num_p; i++){	// Valid[p][Ways][Lines]
				Valid[i] = new bool*[Ways];
				for (int j = 0; j < Ways; j++){
					Valid[i][j] = new bool[Lines];
				}
			}
		
		int*** Tag = new int**[num_p];		// 3D Array to store Tag bits.
		for (int i = 0; i < num_p; i++){	// Tag[p][Ways][Lines]
			Tag[i] = new int*[Ways];
			for (int j = 0; j < Ways; j++){
				Tag[i][j] = new int[Lines];
			}
		}
		int* Update_Way = new int[num_p];
		for (int i = 0; i < num_p; i++){
			Update_Way[i] = 0;
		}
		unsigned int Read_Address;
		unsigned int Read_Tag;
		unsigned int Index;
		bool hit = false;
			
// Variable for DRAM
		int Current_RAM_Row = 0;
		int Previous_RAM_Row = 0;
		bool Previous_RAM_Row_Valid = 0;
		int column_per_block = Words_per_block / DRAM_Word_per_column; // column_per_block is used to calculate the CAS for different block size

// Variable for result
		int hit_count = 0;
		int miss_count = 0;
		int hit_A = 0;
		int hit_B = 0;
		int hit_C = 0;
		int miss_A = 0;
		int miss_B = 0;
		int miss_C = 0;
		int DRAM_free_count = 0;
		int DRAM_Access_count = 0;
		bool Detail = false;

// Start the global_clk controlled multi-processing, the loop stop after all calculation done
	while (end_cal!=num_p){
		// Need to calculate if all processor finish
		end_cal = 0;

		// Need to sync the DRAM_wait_time with global_clk if DRAM is free
		if (DRAM_wait_time <= global_clk){
			DRAM_wait_time = global_clk;
			if (Detail) Detail_file << "DRAM is free" << endl;
			DRAM_free_count++;
		}

		for (int p = 0; p < num_p; p++){

			// Move to next address when current core is time to wake up
			if (time_resume[p]==global_clk){

				// read the address
				Read_Address = address[p][address_count[p]];

				// Get the processor state
				proc_state[p] = Read_Address / 100000;
				//cerr << "Read_address:" << Read_Address << endl;
				// If the processor state is not end, we carry out the calculation
				if (proc_state[p]){

					// Calculate Tag
					Read_Tag = Read_Address >> (2 + Address_Bits_Per_Block + Index_Size);

					// Calculate Index
					Index = (Read_Address - (Read_Tag << (2 + Address_Bits_Per_Block + Index_Size))) >> (2 + Address_Bits_Per_Block);

					// Calculate Current_RAM_Row
					Current_RAM_Row = Read_Address >> DRAM_Columns_address;

					hit = false;
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (Valid[p][l][Index] & (Tag[p][l][Index] == Read_Tag))
						{
							hit = true;
						}
					}

					if (hit)
					{
						hit_count++;// Student may want to count the number of hits.

						if(Detail) Detail_file << "global_clk = " << global_clk << "P:" << p << "," << "hit" << ",";

						switch (proc_state[p])
						{
						case 1:	//Read matrix A and hit
							// For matrix A, it is just a read
							time_resume[p] = global_clk + Hit_Time +1;
							hit_A++;
							
							if (Detail) Detail_file << "A:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;
							
							break;
						case 2: //Read matrix B and hit
							// For matrix B, it is a read and a multiplication need 1 clock
							time_resume[p] = global_clk + Hit_Time +1;
							hit_B++;

							if (Detail) Detail_file << "B:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;
							
							break;
						case 3: //Cache write through for matrix C
							// For matrix C, it is a cache write through, the extra time would be 1 CAS for write, 1 CAS*column_per_block for and may be 1 RAS
							if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row)){
								time_resume[p] = DRAM_wait_time + (CAS + CAS*column_per_block);
							}
							else
							{
								time_resume[p] = DRAM_wait_time + (CAS + CAS*column_per_block) + RAS;
								Previous_RAM_Row = Current_RAM_Row;// Update RAM row
							}
							hit_C++;
							DRAM_wait_time = time_resume[p];
							DRAM_Access_count++;

							if (Detail) Detail_file << "C:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;

							break;

						default:
							cerr << "error in cache hit" << endl;
							cerr << "Global_clk:" << global_clk << endl;
							cerr << "Core:" << p << " address:" << Read_Address << " Position:" << address_count[p] << endl;
							std::cin.get();
							break;
							
						}
					}
					else
					{
						miss_count++;
						
						if (Detail) Detail_file << "global_clk = " << global_clk << "P:" << p << "," << "miss" << ",";

						// If miss calculate miss time.
						switch (proc_state[p])
						{	
						case 1:	// Matrix A
							miss_A++;
							if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
							{
								time_resume[p] = DRAM_wait_time + (CAS*column_per_block) + 2; // Calculate number of CAS delays needed.
							}
							else // Need RAS and CAS
							{
								Previous_RAM_Row = Current_RAM_Row; // Update RAM row
								time_resume[p] = DRAM_wait_time + (CAS*column_per_block) + RAS + 2; // Calculate RAS and CAS delays needed.
							}
							Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

							// Update Cache with new data
							// Update_Way was initialized to 0, way 0 would be updated first
							// cerr << "Update_Way" << Update_Way << " Index_A" << Index_A << endl;
							Valid[p][Update_Way[p]][Index] = true; // Write to the way you chose in previous line
							Tag[p][Update_Way[p]][Index] = Read_Tag; // Write to the way you chose in previous line
							if (Update_Way[p] < (Ways - 1)){
								Update_Way[p]++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
							}
							else Update_Way[p] = 0;

							if (Detail) Detail_file << "A:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;

							DRAM_wait_time = time_resume[p];
							DRAM_Access_count++;

							break;

						case 2:	// Matrix B
							miss_B++;
							if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
							{
								time_resume[p] = DRAM_wait_time + (CAS*column_per_block) + 3; // Caculate number of CAS delays needed.
							}
							else // Need RAS and CAS
							{
								Previous_RAM_Row = Current_RAM_Row; // Update RAM row
								time_resume[p] = DRAM_wait_time + (CAS*column_per_block) + RAS + 3; // Calculate RAS and CAS delays needed.
							}
							Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

							// Update Cache with new data
							// Update_Way was initialized to 0, way 0 would be updated first
							// cerr << "Update_Way" << Update_Way << " Index_A" << Index_A << endl;
							Valid[p][Update_Way[p]][Index] = true; // Write to the way you chose in previous line
							Tag[p][Update_Way[p]][Index] = Read_Tag; // Write to the way you chose in previous line
							if (Update_Way[p] < (Ways - 1)){
								Update_Way[p]++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
							}
							else Update_Way[p] = 0;
							
							if (Detail) Detail_file << "B:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;

							DRAM_wait_time = time_resume[p];
							DRAM_Access_count++;

							break;
							
						case 3:	// Matrix C
							// For matrix C, it is a cache write through, the extra time would be 1 CAS for write, 1 CAS*column_per_block for and may be 1 RAS and miss time
							miss_C++;
							if (Previous_RAM_Row_Valid & (Current_RAM_Row == Previous_RAM_Row))
							{
								time_resume[p] = DRAM_wait_time + (CAS + CAS*column_per_block) + 2; // Caculate number of CAS delays needed.
							}
							else // Need RAS and CAS
							{
								Previous_RAM_Row = Current_RAM_Row; // Update RAM row
								time_resume[p] = DRAM_wait_time + (CAS + CAS*column_per_block) + RAS + 2; // Calculate RAS and CAS delays needed.
							}
							Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.

							// Update Cache with new data
							// Update_Way was initialized to 0, way 0 would be updated first
							// cerr << "Update_Way" << Update_Way << " Index_A" << Index_A << endl;
							Valid[p][Update_Way[p]][Index] = true; // Write to the way you chose in previous line
							Tag[p][Update_Way[p]][Index] = Read_Tag; // Write to the way you chose in previous line
							if (Update_Way[p] < (Ways - 1)){
								Update_Way[p]++;// Choose your way strategy (random,LRU, ~LRU), I choose fifo
							}
							else Update_Way[p] = 0;

							if (Detail) Detail_file << "C:" << "," << "Address:" << "," << Read_Address << "," << "Back_in" << time_resume[p] << "," << endl;

							DRAM_wait_time = time_resume[p];
							DRAM_Access_count++;

							break;

						default:
							cerr << "error in cache miss" << endl;
							cerr << "Global_clk:" << global_clk << endl;
							cerr << "Core:" << p << " address:" << Read_Address << " Position:" << address_count[p] << endl;
							std::cin.get();
							break;
							
							

						
						}
					}	// end cache miss

	
					// Update next address
					address_count[p]++;
				} // end if processor state
			} // end if time_resume[p] == global_clk

			// Calculating the number of processor finished calculation
			if (proc_state[p] == 0) end_cal++;
		} // end p loop
		global_clk++;
					
	} // end end_cal loop		

	cerr << "hit count:" << hit_count << endl;
	cerr << "miss_count:" << miss_count << endl;
	cerr << "Total:" << hit_count + miss_count<<endl;
	
	Result_File << "P" << "," << num_p << "," << "A_Hit Rate" << "," << (double)hit_A / (double)(hit_A + miss_A) * 100 << ","
		<< "B_Hit Rate" << "," << (double)hit_B / (double)(hit_B + miss_B) * 100 << "," 
		<< "C_Hit Rate" << "," << (double)hit_C / (double)(hit_C + miss_C) * 100 << "," 
		<< "Time" << "," << global_clk << "," << "Number of DRAM is free to access:" << "," << DRAM_free_count << "," 
		<< "Number of DRAM access" << "," << DRAM_Access_count << "," << endl;

	for (int i = 0; i < num_p; i++){
			 delete [] address[i];
	}

}


int main(){

	remove("8kb_cache_row_result.csv");
	remove("32kb_cache_row_result.csv");
	remove("8kb_cache_column_result.csv");
	remove("32kb_cache_column_result.csv");
	remove("8kb_cache_one_by_one_result.csv");
	remove("32kb_cache_one_by_one_result.csv");

	// sim: cache size in number of bits, hit time, number of processor 
	for (int p = 1; p <= 50; p++){
		matrix_multi(13, 1, p, "8kb_cache_row_result.csv", 'r');
	}
	
	for (int p = 1; p <= 50; p++){
		matrix_multi(15, 2, p, "32kb_cache_row_result.csv", 'r');
	}

	for (int p = 1; p <= 50; p++){
		matrix_multi(13, 1, p, "8kb_cache_column_result.csv", 'c');
	}

	for (int p = 1; p <= 50; p++){
		matrix_multi(15, 2, p, "32kb_cache_column_result.csv", 'c');
	}

	for (int p = 1; p <= 50; p++){
		matrix_multi(13, 1, p, "8kb_cache_one_by_one_result.csv", 'o');
	}

	for (int p = 1; p <= 50; p++){
		matrix_multi(15, 2, p, "32kb_cache_one_by_one_result.csv", 'o');
	}

	std::cin.get();
	return 0;
}