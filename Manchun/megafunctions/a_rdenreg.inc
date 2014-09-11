FUNCTION a_rdenreg
(
	clk,
	ena,
	e,
	d[WIDTH-1..0],
	aclr,
	aclre
)

WITH
(
	WIDTH,
	D_ACLR,	-- "NONE" or "ACLR"
	E_ACLR	-- "NONE" or "ACLR" or "ACLRE"
)
RETURNS (q[WIDTH-1..0]);

