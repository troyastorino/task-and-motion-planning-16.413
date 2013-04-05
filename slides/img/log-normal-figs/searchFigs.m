state = genParamsInit(3);
lambda = 1

[mu, Sigma, state] = genParams(state, 0);
[muNew, SigmaNew, stateNew] = genParams(state, lambda);
for i = 1:1000
	figure(1)
	draw3(mu, Sigma)
	figure(2)
	draw3(muNew, SigmaNew)
	k = getkey()
	if (k == 49)
		[muNew, SigmaNew, stateNew] = genParams(state, lambda);
	else
		delta{1} = stateNew{1} - state{1};
		delta{2} = stateNew{2} - state{2};

		mu = muNew
		Sigma = SigmaNew
		state = stateNew;

		stateNew{1} = state{1} + delta{1};
		stateNew{2} = state{2} + delta{2};
		[muNew, SigmaNew, stateNew] = genParams(stateNew, 0);
	end
end
