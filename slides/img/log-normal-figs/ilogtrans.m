mu2 = randn(1,2)
X = randn(3,2);
Sigma2 = X' * X

eta2 = mvnrnd(mu2, Sigma2, 10000);
theta2 = zeros(size(eta2));
theta2(:,1) = exp(eta2(:,1)) ./ (exp(eta2(:,1)) + exp(eta2(:,2)));
theta2(:,2) = exp(eta2(:,2)) ./ (exp(eta2(:,1)) + exp(eta2(:,2)));

figure(1)
n = 10000
plot(  eta2(1:n,1),   eta2(1:n,2), '+')
figure(2)
%n = 100
%plot(theta2(1:n,1), theta2(1:n,2), '.')
%figure(3)
hist(theta2(:,1), 100)

ieta2 = log(theta2);

figure(1)
hold on
plot(ieta2(1:n,1), ieta2(1:n,2), 'r+')
axis equal
hold off

itheta2 = zeros(size(eta2));
itheta2(:,1) = exp(ieta2(:,1)) ./ (exp(ieta2(:,1)) + exp(ieta2(:,2)));
itheta2(:,2) = exp(ieta2(:,2)) ./ (exp(ieta2(:,1)) + exp(ieta2(:,2)));
figure(3)
hist(itheta2(:,1), 100)
