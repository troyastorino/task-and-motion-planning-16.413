function draw3(mu3, Sigma3)
	eta3 = mvnrnd(mu3, Sigma3, 50000);
	theta3 = zeros(size(eta3));
	for i = 1:length(eta3)
		theta3(i,1) = exp(eta3(i,1)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
		theta3(i,2) = exp(eta3(i,2)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
		theta3(i,3) = exp(eta3(i,3)) / (exp(eta3(i,1)) + exp(eta3(i,2)) + exp(eta3(i,3)));
	end

	figure(4)
	plot3(  eta3(1:5000,1),   eta3(1:5000,2),   eta3(1:5000,3), '+')
	axis equal
	figure(5)
	plot3(theta3(1:5000,1), theta3(1:5000,2), theta3(1:5000,3), '+')
	axis equal
	view([130 30])

	figure(6)
	surf(hist2(theta3(:,1:2), 100))
	shading interp
