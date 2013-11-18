function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% loop for each row
for row = 1:rows(z)
	%loop for each col
	for column = 1:columns(z)
		g(row,column) = 1 / (1+e^-z(row,column));
	end
end





% =============================================================

end
