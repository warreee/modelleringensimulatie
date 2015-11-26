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
% print -depsc opdracht4 %used for output