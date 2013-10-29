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

% we do X*theta matrix mult to get the h(x) matrix predictions
% we subtract y to get the errors
% we use .^2 to elementwise, square each item in the result.
% we sum over those elements items with the sum(). we are no longer
% ... dealing with matrices. Finally we diivide by 2m.
J = sum(((X*theta)-y).^2)/(2*m);

% =========================================================================

end
