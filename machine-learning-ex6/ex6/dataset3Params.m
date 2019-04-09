function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
candidate = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


% len = length(candidate);
% result = zeros(len * len, 3);
% k = 1;
% % store each result
% for i = 1:len
%     for j = 1:len
%         C = candidate(i);
%         sigma = candidate(j);
%         model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%         predictions = svmPredict(model, Xval);
%         error = mean(double(predictions ~= yval));
%         result(k,:) = [C, sigma, error];
%         k = k + 1;
%     end
% end

% % find the minimun error term
% minErr = min(result(:,3));
% for i = 1:length(result(:,1))
%     row = result(i,:);
%     if row(3) == minErr
%         C = row(1);
%         sigma = row(2);
%         break
%     end
% end

% the best value we find
C = 1;
sigma = 0.1;

% =========================================================================

end
