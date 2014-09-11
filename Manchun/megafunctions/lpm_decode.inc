FUNCTION lpm_decode(data[LPM_WIDTH-1..0], enable, clock, aclr, clken)
	WITH (LPM_WIDTH, LPM_DECODES, LPM_PIPELINE)
	RETURNS (eq[LPM_DECODES-1..0]);

