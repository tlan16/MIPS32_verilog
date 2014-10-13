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
bool debug_check_address = 1;

void sim(int np, int cache_size_kB)
{
	// Initialise output files
	ofstream Result_File("Cache_Sim.csv", ios::app);
	ofstream Address_File("Addresses.csv", ios::app);

	// Initial processor state array (1:accessing matrix A, 2:accessing matrix B, 3:accessing matrix C, 4:finished)
	int *ProcessorStateArray = new int[np];
	bool All_processor_finished = 0;

	for (int i = 0; i < np; i++)
		ProcessorStateArray[i] = 1;

	// Initial processor position array
	int *ProcessorPositionArray = new int[np];

	for (int i = 0; i < np; i++)
		ProcessorPositionArray[i] = 0;

	// Distrubute tasks and assign addresses to each processor
	int** address_cal(int num_p);
	int** AddressArray = address_cal(np);

	// Check addresses distribusion
	if (debug_check_address)
	{
		for (int i = 0; i < np; i++)
		{
			Address_File << "P" << i << ",";
			if (i == (np - 1))
				Address_File << endl;
		}
		for (int i = 0; i < 300000; i++)
		{
			for (int p = 0; p < np; p++)
			{
				Address_File << AddressArray[p][i] << ",";
			}
			Address_File << endl;
		}
	}

	// Initialise Address, Index, Tag
	int Current_Address;
	int Current_Index;
	int Current_Tag;

	// Initial result timers
	unsigned long long int Globle_Counter = 0;
	unsigned long long int DRAM_Time = Globle_Counter;
	unsigned long long int *Resume_Time = new unsigned long long int[np];
	for (int i = 0; i < np; i++)
		Resume_Time[i] = Globle_Counter; // Initially not locked

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
	// Calculated Cache Aruguments
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
	Result_File << "Number of Processors" << "," << "Cache Size" << "," << "Ways" << "," << "Words_Per_Block" << "," << "Hit_Time" << ","
		<< "Sets" << "," << "Index_Size" << "," << "Tag_Size" << ","
		<< endl
		<< np << "," << Cache_Size / 1024 << "," << Ways << "," << Words_Per_Block << "," << Hit_Time << ","
		<< Lines << "," << Index_Size << "," << Tag_Bits << ","
		<< endl;

	while (!All_processor_finished)
	{
		for (int p = 0; p < np; p++)
		{
			switch (ProcessorStateArray[p])
			{
			case 1:
				// Check if resumed
				if (debug_mode)
					Result_File << "p=" << "," << p << "," << "GC" << "," << Globle_Counter  << "," << endl;
				if (Resume_Time[p] <= Globle_Counter) // resumed
				{
					// check if this processor finished
					if (!ProcessorPositionArray[p] & Globle_Counter & Resume_Time[p]) // finished
						ProcessorStateArray[p] = 4;
					else // not finished
					{
						// get address, index, tag
						Current_Address = AddressArray[p][ProcessorPositionArray[p]];
						Current_Index = (Current_Address / Block_size) % Lines;
						Current_Tag = Current_Address / (Block_size * Lines);

						switch (Current_Address/100000)
						{
						case 1: // accessing matrix A
							if (debug_mode)
								Result_File << "A:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						case 2: // accessing matrix B
							if (debug_mode)
								Result_File << "B:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						case 3: // accessing matrix C
							if (debug_mode)
								Result_File << "C:" << "," << Current_Address << "," << "index:" << "," << Current_Index << "," << "tag:" << "," << Current_Tag << "," << endl;
							break;
						}

						ProcessorPositionArray[p]++;

						// check if chace hit
						bool if_hit = 0;
						if (if_hit) // hit
						{
							// time delay
						}
						else // not hit
						{
							Resume_Time[p] = DRAM_Time + DRAM_access_delay;
							DRAM_Time = Resume_Time[p];
							if (debug_mode)
								Result_File << "Resume_Time" << "," << Resume_Time[p] << "," << "DRAM_Time" << "," << DRAM_Time << "," << endl;
						}
					}
				}




				
				break;
			case 2:

				break;

			case 3:

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
			else
				Globle_Counter++;
		} // end for
	}


}



int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	remove("Cache_Sim.csv");
	remove("Addresses.csv");

	// sim number of processer, cache size in kB
	sim(2,32);

	if (debug_mode)
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
