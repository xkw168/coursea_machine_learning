function index = indexClosestCentroids(X, centroids)
    
    % Set K
    K = size(centroids, 1);
    
    distance = zeros(K, 1);
    
    for j = 1:K
        centroid = centroids(j,:);
        distance(j) = (X - centroid) * (X - centroid)';
    end
    
    [value, index] = min(distance);
    
    
    % =============================================================
    
    end
    
    