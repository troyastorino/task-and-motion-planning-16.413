function [Sigma, state] = genSigma(state, lambda)
	state = state + lambda * randn(size(state));
	Sigma = state' * state;
