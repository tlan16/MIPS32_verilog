FUNCTION lpm_mux(data[LPM_SIZE-1..0][LPM_WIDTH-1..0], sel[LPM_WIDTHS-1..0], clock, aclr, clken)
	WITH (LPM_WIDTH, LPM_SIZE, LPM_WIDTHS, LPM_PIPELINE)
	RETURNS (result[LPM_WIDTH-1..0]);
