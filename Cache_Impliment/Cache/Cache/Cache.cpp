// Cache_Sim_Pseudo_Template :
// This file contains a very basic template that can be used to build a simple
// cache simulator required for ECE4074 assignment 2.
// Constants and variables used below are simply a guide to students
// on how to implement the design. Many enhancements can be done by 
// diverging from the structure presented below.

#include "stdafx.h"
#include <iostream>
using namespace std;

int _tmain(int argc, _TCHAR* argv[]) // Some of the below constants you might want to pass as program arguments
{
	const int Word_Size = 32; // Size of words in bits
	const int Address_Size = 32; // Number of bits used in the memory address
	const int Column_Bits = 3; // Number of bits used to dereference a coloumn in SDRAM
	const int Words_Per_Bus_Transfer = 2; // Number of words transfered per CAS.
	const int CAS = 24; // CAS time in clock cycles
	const int RAS = 72; // RAS time in clock cycles

	const int Ways = 1; //  Number of ways for simulation
	const int Data_Size = 16 *1024*8; // bits
	const int Words_Per_Bock = 4; // Number of words per block (derived from address bits per block)
	const int Hit_Time = 1; // Hit_Time (in clock cycles)

	const int Sets = Data_Size / Word_Size / Words_Per_Bock / Ways;
	const int Lines = Sets; // Number of lines per way in the cache (derived from Index_Size)
	const int Blocks_Per_Set = Ways;
	const int Index_Size = log2(Sets); // Number of bits used to create the index
	const int Address_Bits_Per_Block = log2(Words_Per_Bock); // Address bits used to derefence a word in a block
	const int Tag_Bits = 32 - (Index_Size + Address_Bits_Per_Block +2); // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)
	
	const int Blocks = Blocks_Per_Set * Sets;
	const int Block_size = Words_Per_Bock * Word_Size;
	const int Cache_Size = Blocks * Block_size;

	cerr << "Cache Size: " << (Cache_Size/8/1024) << "kB" << endl;
	std::cin.get();
	return 0;
}

