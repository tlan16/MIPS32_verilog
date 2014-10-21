		int time = 0;
		time += 10; // Add delay that exists before entering main loop
		cerr << "time= " << time << ", delay before entering main loop" << endl;

		for (int i = 0; i<Matrix_Size; i++)
		{
			time += 10; // Add outer loop delay 
			cerr << "time= " << time << ", outer loop delay" << endl;

			for (int j = 0; j<Matrix_Size; j++)
			{
				time += 10; // Add middle loop delay 
				cerr << "time= " << time << ", middle loop delay" << endl;

				for (int k = 0; k<Matrix_Size; k = k++)
				{
					// Add inner loop delay.
					time += 10;
					cerr << "time= " << time << ", inner loop delay" << endl;

					// Calculate Read Address for Matrix A[i][k]
					long int *Read_Address = &(matrixA[i][k]);// Calculate next lw address for matrix A

					// Calculate Tag
					Read_Tag = ;

					// Calculate Index
					Index = ;

					// Deference Index for each way and check each tag and valid bit.
					hit = false;
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (/*Cache hit*/)
						{
							hit = true;
						}
					}

					if (hit)
					{
						time += ;// If hit, add hit time
						// Student may want to count the number of hits.
					}
					else
					{
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row = ;
						if (/*Only need CAS*/)
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
					for (int l = 0; l<Ways; l = l + 1) // Check each way
					{
						if (/*Cache hit*/)
						{
							hit = true;
						}
					}

					if (hit)
					{
						time += ;// If hit, add hit time
						// Student may want to count the number of hits.
					}
					else
					{
						// If miss calculate miss time.
						// Calculate RAM row.
						Current_RAM_Row = ;
						if (/*Only need CAS*/)
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
				for (int l = 0; l<Ways; l = l + 1) // Check each way
				{
					if (/*Cache hit*/)
					{
						hit = true;
					}
				}

				if (hit) // Still need to write through
				{
					time += ;// If hit, add hit time
					// Student may want to count the number of hits.

					// As write through there is always some DRAW interaction
					// Calculate RAM row.
					Current_RAM_Row = ;
					if (/*Only need CAS*/)
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
					if (/*Only need CAS*/)
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

