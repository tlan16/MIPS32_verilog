FUNCTION multcore (dataa[(widtha) - (1)..0], datab[(widthb) - (1)..0], clock, aclr, clken)
    WITH (WIDTHA, WIDTHB, LPM_REPRESENTATION, LATENCY, ONE_INPUT_IS_CONSTANT, USE_EAB, MAXIMIZE_SPEED, OP_MODE, DEDICATED_MULTIPLIER_CIRCUITRY, SUB_DEDICATED_MULTIPLIER_CIRCUITRY)
    RETURNS (result[((widtha) + (widthb)) - (1)..0]);
