function [J] = computeError(hx, y)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;

error = hx - y;
J = (error' * error) / (2 * m);

end
