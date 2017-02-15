function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
layer1_totals = zeros(1,n);
layer2_totals = zeros(1,n);
layer3_totals = zeros(1,n);
counter1 = 0;
counter2 = 0;
counter3 = 0;
for i=1:size(idx,1)
  if (idx(i) == 1)
    layer1_totals = layer1_totals + X(i,[1:n]);
    counter1 = counter1 + 1;
  else if (idx(i) == 2)
    layer2_totals = layer2_totals + X(i,[1:n]);
    counter2 = counter2 + 1;
  else (idx(i) == 3)
    layer3_totals = layer3_totals + X(i,[1:n]);
    counter3 = counter3 + 1;
  endif
  endif
  end
centroids(1,:) = layer1_totals / counter1;
centroids(2,:) = layer2_totals / counter2;
centroids(3,:) = layer3_totals / counter3;




% =============================================================


end

