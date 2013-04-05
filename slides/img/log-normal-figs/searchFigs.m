state = genParamsInit(3);
lambda = 1

Sigma = genParams(state, 0);
[SigmaNew, stateNew] = genParams(state, lambda);
for i = 1:1000
	figure(1)
	draw3(Sigma)
	figure(2)
	draw3(SigmaNew)
	k = getkey()
	if (k == 49)
		[SigmaNew, stateNew] = genParams(state, lambda);
	else
		delta = stateNew - state;

		Sigma = SigmaNew
		state = stateNew;

		stateNew = state + delta;
		SigmaNew = genParams(stateNew, 0);
	end
end
