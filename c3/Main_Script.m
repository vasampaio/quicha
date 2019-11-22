pkg load statistics
x = csvread('new_iris.data');
X = x(:,1:4);
y = x(:,5);
[idx, centers, sumd, dist] = kmeans(X, 3);
mappedX = tsne(X, idx, 2, 4, 30);
title ("K-means Clustering with t-SNE");
axis("on","auto[xyz]")
print ( "kcluster.pdf");
mappedX = tsne(X, y, 2, 4, 30);
title ("Original Clustering with t-SNE");
axis("on","auto[xyz]")
print ( "ocluster.pdf");