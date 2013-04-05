function draw3(Sigma3)
	mu3 = [0 0 0];

	eta3 = mvnrnd(mu3, Sigma3, 50000);
	theta3 = zeros(size(eta3));
	for i = 1:length(eta3)
		theta3(i,1) = exp(eta3(i,1)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
		theta3(i,2) = exp(eta3(i,2)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
		theta3(i,3) = exp(eta3(i,3)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
	end

	%figure(1)
	n = 50000;
	%plot3(  eta3(1:n,1),   eta3(1:n,2),   eta3(1:n,3), '.', 'MarkerSize', 0.5)
	%axis equal
	%figure(2)
	plot3(theta3(1:n,1), theta3(1:n,2), theta3(1:n,3), '.', 'MarkerSize', 0.5)
	axis equal
	view([130 30])
