// Author: Damien Browne
// This is a pseduo code template for use in ECE4074 for students to complete assignment 3.
// An explanation of the operation of the code is seen in the assignment description.

#include <vector>
#include "stdio.h"
#include <iostream>
#include <fstream>
using namespace std;

// Function to calculating all the address needed to be compute for all cores.
int** address_cal(int num_p){
	cerr << "Calculating Address" << endl;
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
	for (int c = 0; c < 2500; c++){
		m = c / 50;
		n = c % 50;
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
		p++;
		if (p == num_p) p = 0;
	}

	return address;

}

int matrix_multi(int Data_size_in_bits, int Hit_Time_in_clock){
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

	
// loop for different number of processor
	for (int num_p = 1; num_p < 50; num_p++){	
		// Varialbe for multi-processing
		double global_clk = 0;	// global clock is used to sync different processor
		double DRAM_wait_time = 0;	// Time when DRAM is free
		double time_resume[50];	// time to resume processing for different processor
		char proc_state[50];	// current state of processor
		// proc_state is used to control the state of different processor
		// A for get matrix A, B for get matrix B, C for store C, F for finished
		// The processor should do (A->B)x50 then C,
		// after all C haved been calculated, the state is F and wait for all processor finish
		int instruction_count = 0; // count every time accessing memory, the number should be 252500 when the loop exit
		bool end_cal = 0; // To contorl the end of calculation, 1 means end

		int **address = address_cal(num_p);	// Calculating the address and the order for each core
		
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

		for (int i = 0; i < 50; i++){
			time_resume[i] = 0;		// time_resume would b 0 at start
			proc_state[i] = 'A';	// all processor should read address of matrix A at start
		}

		// Start the global_clk controlled multi-processing, the loop stop after all calculation done
		while (!end_cal){




			
		} // end end_cal loop


	}
// end loop for different number of processor

	return 0;
}


int main(){
	int** var = address_cal(1);
	int** var2 = address_cal(10);

	//matrix_multi(13, 1);
	//matrix_multi(15, 2);

	cerr << &var[0][252498] << endl;
	cerr << &var2[0][252498] << endl;
	cerr << &var2[0][252497] << endl;
	std::cin.get();
	return 0;
}