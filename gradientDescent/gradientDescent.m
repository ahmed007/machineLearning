function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
tempvar=0;
temp1=0;
for iter = 1:num_iters
 
    J_history(iter) = computeCost(X, y, theta);
    
    h_theta = 0;
    for i=1:length(theta),
      h_theta = h_theta + theta(i,1) * X(:,i) ;
    
    end;

    residual = h_theta - y;    
    
    
    temp0 = theta(1,1) - (alpha/m) *  sum(residual) ;
    temp1 =  theta(2,1) -(alpha/m)* sum( residual .* X(:,2))
%     for i=1:m,
%         tempvar = tempvar +   ( residual(i,1) * X(i,2))  ;  
%     end;
%     temp1 =  theta(2,1) - (alpha/m)*tempvar;
    theta(1,1) = temp0;
    theta(2,1) = temp1;

end

end
