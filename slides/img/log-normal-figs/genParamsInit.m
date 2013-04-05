function state = genParamsInit(s)
	state = {randn(1,s), randn(s+1,s)};
