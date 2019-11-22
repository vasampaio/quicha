pkg load statistics
x = csvread('new_iris.data');
X = x(:,1:4);
y = x(:,5);

[idx, centers, sumd, dist] = kmeans(X, 3);
mappedX = tsne(X, [], 2, 4, 30);
scatter(mappedX(:,1), mappedX(:,2),36, idx);
title ("K-means Clustering with t-SNE");
axis("on","auto[xyz]");
print ("kmeans_cluster.pdf");

scatter(mappedX(:,1), mappedX(:,2),36, y);
title ("Original Clustering with t-SNE");
axis("on","auto[xyz]");
print ("original_cluster.pdf");