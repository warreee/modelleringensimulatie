% vraag 6
load('AmazonBookReviews.mat');
tic;
Predicted26 = r0381767_predictedRatings(Ratings, 40, 5000);
toc;    
imagesc(Predicted26); 
colorbar; 
axis('square');