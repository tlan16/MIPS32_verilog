// Cache_Sim_Pseudo_Template :
// This file contains a very basic template that can be used to build a simple
// cache simulator required for ECE4074 assignment 2.
// Constants and variables used below are simply a guide to students
// on how to implement the design. Many enhancements can be done by 
// diverging from the structure presented below.

#include "stdafx.h"


int _tmain(int argc, _TCHAR* argv[]) // Some of the below constants you might want to pass as program arguments
{


  const int Ways = ; //  Number of ways for simulation
  const int Index_Size=; // Number of bits used to create the index
  
  const int Lines = ; // Number of lines per way in the cache (derived from Index_Size)
  const int Address_Size = ; // Number of bits used in the memory address
  const int Word_Size = ; // Size of words in bytes
  const int Address_Bits_Per_Block = ; // Address bits used to derefence a word in a block
  const int Words_Per_Bock = ; // Number of words per block (derived from address bits per block)
  const int Tag_Bits = ; // Number of bits used in the tag (derived from Address_Size, Index_Size and Address_Bits_Per_Block)
  const int Hit_Time = ; // Hit_Time (in clock cycles)
  const int Column_Bits = ; // Number of bits used to dereference a coloumn in SDRAM
  const int Words_Per_Bus_Transfer = ; // Number of words transfered per CAS.

  const int CAS = ; // CAS time in clock cycles
  const int RAS = ; // RAS time in clock cycles

  cerr  << "Cache Size: " << /* Advisable to calculate and check your cache size */  << "kB" << endl; 

  bool Valid[Ways][Lines]; // Array to store Valid Bits
  int Tag[Ways][Lines]; // Array to store Tag bits.


  // Declare any required variables in this section


  for(int Matrix_Size = 2;Matrix_Size <= 256; Matrix_Size ++ ) // Step through all matrix sizes
    {

      // Initialize Cache as being empty
      for(int i=0;i<Ways;i++)
	{
	  for(int j=0;j<Lines;j++)
	    {
	      Valid[i][j] = /* Student to add*/;
	    }
	}

      // Matrix array pointers
      Start_Pointer_A = ;
      Start_Pointer_B = ;
      Start_Pointer_C = ;


      time += ; // Add delay that exists before entering main loop
      for(i=0;i<Matrix_Size;i++)
	{
	  time += ; // Add outer loop delay 
	  for(j=0;j<Matrix_Size;j++)
	    {
	      time += ; // Add middle loop delay 

	      for(k=0;k<Matrix_Size;k=k++)
		{
		  // Add inner loop delay.
		  time += ; 

		  // Calculate Read Address for Matrix A[i][k]
		  Read_Address = ;// Calculate next lw address for matrix A

		  // Calculate Tag
		  Read_Tag = ;

		  // Calculate Index
		  Index = ;

		  // Deference Index for each way and check each tag and valid bit.
		  hit = false;
		  for(int l=0;l<Ways;l=l+1) // Check each way
		    {
		      if(/*Cache hit*/) 
			{
			  hit = true;
			}
		    }
				
		  if(hit)
		    {
		      time += ;// If hit, add hit time
		      // Student may want to count the number of hits.
		    }
		  else
		    {
		      // If miss calculate miss time.
		      // Calculate RAM row.
		      Current_RAM_Row = ;
		      if(/*Only need CAS*/)
			{
			  time += ; // Caculate number of CAS delays needed.
			}
		      else // Need RAS and CAS
			{
			  Previous_RAM_Row = ; // Update RAM row
			  time += ; // Calculate RAS and CAS delays needed.
			}
		      Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.
				
		      // Update Cache with new data
		      Update_Way = ;// Choose your way strategy (random,LRU, ~LRU)

		      Valid[Update_Way][Index] = true; // Write to the way you chose in previous line
		      Tag[Update_Way][Index] = Read_Tag; // Write to the way you chose in previous line
		    }

					
		  // Repeat for B; B[k][j]
		  Read_Address = ; // Calculate Next LW address for matrix B

		  // Calculate Tag
		  Read_Tag = ;

		  // Calculate Index
		  Index = ;

		  // Deference Index for each way and check each tag and valid bit.
		  hit = false;
		  for(int l=0;l<Ways;l=l+1) // Check each way
		    {
		      if(/*Cache hit*/) 
			{
			  hit = true;
			}
		    }
				
		  if(hit)
		    {
		      time += ;// If hit, add hit time
		      // Student may want to count the number of hits.
		    }
		  else
		    {
		      // If miss calculate miss time.
		      // Calculate RAM row.
		      Current_RAM_Row = ;
		      if(/*Only need CAS*/)
			{
			  time += ; // Caculate number of CAS delays needed.
			}
		      else // Need RAS and CAS
			{
			  Previous_RAM_Row = ; // Update RAM row
			  time += ; // Calculate RAS and CAS delays needed.
			}
		      Previous_RAM_Row_Valid = true; // On power up, a RAS is always needed.
				
		      // Update Cache with new data
		      Update_Way = ;// Choose your way strategy (random,LRU, ~LRU)

		      Valid[Update_Way][Index] = true; // Write to the way you chose in previous line
		      Tag[Update_Way][Index] = Read_Tag; // Write to the way you chose in previous line
		    }
				

		  //Sum += A[i][k]*B[k][j];
		}



	      //C[i][j] = Sum;
	      // Assume write through;
	      // Calculate Write Address;
	      Write_Address = ;

	      // Calculate Tag
	      Write_Tag = ;
	      
	      // Calculate Index
	      Index = ;
	      
	      // Deference Index for each way and check each tag and valid bit.
	      hit = false;
	      for(int l=0;l<Ways;l=l+1) // Check each way
		{
		  if(/*Cache hit*/) 
		    {
		      hit = true;
		    }
		}
	      
	      if(hit) // Still need to write through
		{
		  time += ;// If hit, add hit time
		  // Student may want to count the number of hits.

		  // As write through there is always some DRAW interaction
		  // Calculate RAM row.
		  Current_RAM_Row = ;
		  if(/*Only need CAS*/)
		    {
		      time += ; // Caculate number of CAS delays needed.
		    }
		  else // Need RAS and CAS
		    {
		      Previous_RAM_Row = ; // Update RAM row
		      time += ; // Calculate RAS and CAS delays needed.
		    }
		}
	      else // Need to write through and update cache
		{

		  // Calculate RAM row.
		  Current_RAM_Row = ;
		  if(/*Only need CAS*/)
		    {
		      time += ; // Caculate number of CAS delays needed.
		    }
		  else // Need RAS and CAS
		    {
		      Previous_RAM_Row = ; // Update RAM row
		      time += ; // Calculate RAS and CAS delays needed.
		    }
		  
		  // Update Cache with new data
		  Update_Way = ;// Choose your way strategy (random,LRU, ~LRU)
		  
		  Valid[Update_Way][Index] = true; // Write to the way you chose in previous line
		  Tag[Update_Way][Index] = Read_Tag; // Write to the way you chose in previous line
		}
	      
	    }
	}


      cerr <<Matrix_Size << endl; // Keep track of your programs execution. Be careful in writing your code, this simulation can get slow very easily
      
      // Some useful data should be written to file here recommend using cout here
      // and runing program using a command like "cache_sim.exe >> results.csv" to
      // save development time and make it easy to use results in excel.
      // eg: cout << Matrix_Size << ',' << time << ',' << hit_percentage << endl;
    }
  return 0;
}

