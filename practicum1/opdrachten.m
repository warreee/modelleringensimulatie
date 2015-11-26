%% Opdracht 1

load('AmazonBookReviews.mat');
spy(Ratings);

%% Opdracht 4

[Predicted, err] = r0381767_predictedRatings(Ratings, 15,10000);
figure
loglog(err)
title('Relative error in function of # of iterations')
xlabel('# of iterations')
ylabel('Relative error')
hold on
x = 1:10000;
loglog(x.^(-0.5))
print -depsc opdracht4 %used for output

%% Opdracht 6

Predicted26 = r0381767_predictedRatings(Ratings, 40, 5000);   
imagesc(Predicted26); 
colorbar; 
axis('square'); 
print -depsc opdracht6 %used for output

%%