function J = computeCost(X, y, theta)
m = length(y); % number of training examples

J = 0;


h_theta = 0;
for i=1:length(theta),
    h_theta = h_theta + theta(i,1) * X(:,i) ;
    
end;

residual = h_theta - y;
residual_sq = residual.^2;
J=J + 1/(2*m) * sum( residual_sq);


% =========================================================================

end
