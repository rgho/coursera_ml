function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% COST CALC SUM PORTION
for sample_number = 1:m
	xi = X(sample_number,:);
	hypothesis = sigmoid(xi*theta); % have no idea why this order is what works! and no thata transpose.
	yi = y(sample_number);
	J = J + (-1*yi*log(hypothesis)-((1 -yi)*log(1-hypothesis)));
end
J = (1/m) * J;
% COMPUTE REGULARIZATION TERM
regularization_term = 0;
for feature_number = 1:length(theta)
	regularization_term = regularization_term + theta(feature_number)^2;
end
regularization_term = regularization_term * (lambda/(2*m));
% ADD REG TERM TO COST
J = J + regularization_term




% GRADIENT 
for feature_number = 1:length(theta)
	%grad(feature_number) = 0
	temp = 0
	for sample_number = 1:m
		xi = X(sample_number,:);
		hypothesis = sigmoid(xi*theta);
		yi = y(sample_number);
		temp = temp + ((hypothesis-yi)*xi(feature_number));
	end
	grad(feature_number) = (1/m)*temp
end







% =============================================================

end
