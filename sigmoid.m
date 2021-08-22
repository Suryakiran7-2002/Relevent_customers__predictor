function g = sigmoid(z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


for i = 1:size(z,1)
    for j = 1:size(z,2)
        
        
        sig = 1 / (1 + exp(-z(i,j)));
        g(i,j) = sig;
    end
end



% =============================================================

end
