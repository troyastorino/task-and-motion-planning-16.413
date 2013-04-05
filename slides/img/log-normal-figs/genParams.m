function [mu, Sigma, state] = genParams(state, lambda)
	state{1} = state{1} + lambda * randn(size(state{1}));
	state{2} = state{2} + lambda * randn(size(state{2}));
	mu = state{1};
	Sigma = state{2}' * state{2};
