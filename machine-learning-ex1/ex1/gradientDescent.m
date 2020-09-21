function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
on=ones(m,1);
matx=X;
for iter = 1:num_iters,
  mu=matx*theta;
  mu=mu-y;
  mu1=mu.*X(:,2);
  su=sum(mu);
	su1=sum(mu1);
	theta(1,1)=theta(1,1)-(alpha/m)*su;
	theta(2,1)=theta(2,1)-(alpha/m)*su1;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
	
	
	


    

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
