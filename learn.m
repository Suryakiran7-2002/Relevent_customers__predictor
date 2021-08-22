function theta = learn(X,y)
%UNTITLED Summary of this function goes here
format long g;
itr = 10000000;
alpha = 0.001;

m = size(X,1);
theta = zeros(size(X,2),1);
j_hist = zeros(itr,1);
X;
y;
for i  = 1:itr
    hyp = sigmoid(X*theta);
    
    theta = theta - (alpha/m) * (X' * (hyp - y));
    i
    j_hist(i,1) = (-1/m) * (  (y' * log(hyp)) + ((1-y)' * log(1-hyp)));
    
end
plot([1:itr],j_hist);
j_hist
end
