PARAMETERS
(
	WIDTH_BYTEENA = 1
);
FUNCTION altdpram
(
	wren,
	data[WIDTH-1..0],
	wraddress[WIDTHAD-1..0],
	inclock,
	inclocken,
	rden,
	rdaddress[WIDTHAD-1..0],
	outclock,
	outclocken,
	aclr,
	byteena[WIDTH_BYTEENA-1..0],
	wraddressstall,
	rdaddressstall
)

WITH
(
	WIDTH,
	WIDTHAD,
	NUMWORDS,
	FILE,
	INDATA_REG,
	INDATA_ACLR,
	WRADDRESS_REG,
	WRADDRESS_ACLR,
	WRCONTROL_REG,
	WRCONTROL_ACLR,
	RDADDRESS_REG,
	RDADDRESS_ACLR,
	RDCONTROL_REG,
	RDCONTROL_ACLR,
	OUTDATA_REG,
	OUTDATA_ACLR,
	USE_EAB,
	MAXIMUM_DEPTH,
	RAM_BLOCK_TYPE,
	READ_DURING_WRITE_MODE_MIXED_PORTS,
	WIDTH_BYTEENA,
	BYTE_SIZE
)
RETURNS (q[WIDTH-1..0]);

