function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
for j = 1:m %column loop
  A = 0;
	for i = 1:length(theta) %column loop
		A = A + theta(i)*X(j,i);
    end
  J = J + ((A-y(j,1))^2)/(2*m);
end


% =========================================================================

end
