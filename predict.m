function p = predict(male_theta,female_theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%
h = zeros(m,1);

for i = 1:size(X,1)
    if X(i,1) == 1
        h(i,1) = sigmoid(X(i,:) * male_theta);
        if h(i,1) >= 0.5
            h(i,1) = 1;
        else
            h(i,1) = 0;
        end
    else
        X(i,1) = 1;
        h(i,1) = sigmoid(X(i,:) * female_theta);
        if h(i,1) >= 0.5
            h(i,1) = 1;
        else
            h(i,1) = 0;
        end
    end
end
p = h;
end
