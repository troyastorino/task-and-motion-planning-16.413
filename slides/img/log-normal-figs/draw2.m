function draw2(Sigma2)
	mu2 = [0 0];

	eta2 = mvnrnd(mu2, Sigma2, 500000);
	theta2 = zeros(size(eta2));
	for i = 1:length(eta2)
		theta2(i,1) = exp(eta2(i,1)) / (exp(eta2(i,1)) + exp(eta2(i,2)));
		theta2(i,2) = exp(eta2(i,2)) / (exp(eta2(i,1)) + exp(eta2(i,2)));
	end

	%figure(1)
	%n = 10000
	%plot(  eta2(1:n,1),   eta2(1:n,2), '.', 'MarkerSize', 0.5)
	%axis equal
	%figure(2)
	%n = 100
	%plot(theta2(1:n,1), theta2(1:n,2), '.')
	%figure(3)
	hist(theta2(:,1), 100)
