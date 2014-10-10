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

void sim(int np)
{
	// Initialise
	const int No_Multi = 50 * 50 * 50;
	int Remain_Multi = No_Multi;
	const int No_Addition = 50 * 50;
	int Remain_Addition = No_Addition;

	ofstream Result_File("Cache_Sim.csv", ios::app);

	int** ProcessorArray = new int*[np];
	for (int i = 0; i < np; i++)
		ProcessorArray[i] = new int[No_Addition];
	for (int i = 0; i < np; i++)
	{
		for (int j = 0; j < No_Addition; j++)
		{
			ProcessorArray[i][j] = 0;
			if (debug_mode)
				Result_File << ProcessorArray[i][j] << ",";
		}
		Result_File << endl;
	}
	Result_File << endl;

	// Distribute Task
	int position[No_Addition] = { 0 };
	int i = 0;
	int p = 0;

	while (i != np)
	{
		int temp = position[p];
		ProcessorArray[p][temp] = i;
		position[p]++;

		if (p < np)
			p++;
		else
			p = 0;
		i++;
	}

	if (debug_mode)
	{
		for (int i = 0; i < np; i++)
		{
			for (int j = 0; j < No_Addition; j++)
				Result_File << ProcessorArray[i][j] << ",";
			Result_File << endl;
		}
		Result_File << endl;
	}
}



int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	remove("Cache_Sim.csv");

	sim(10);

	if (debug_mode)
		std::cin.get();
	return 0;
}
