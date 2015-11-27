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

Predicted26 = r0381767_predictedRatings(Ratings, 26, 5000);   
imagesc(Predicted26); 
colorbar; 
axis('square'); 
print -depsc opdracht6 %used for output

%% Opdracht 8

book1 = r0381767_similarBooks(1,6,Predicted26,labels)
book21 = r0381767_similarBooks(21,3,Predicted26,labels)
book101 = r0381767_similarBooks(101,10,Predicted26,labels)

%% Opdracht 9

semilogy(svd(Predicted26), 'x');
print -depsc opdracht9a %used for output

%% Opdracht 11

C26 = r0381767_correlationMatrix(Predicted26);
imagesc(C26); 
colorbar;
print -depsc opdracht11 %used for output

%% Opdracht 13

Hinf26 = r0381767_buildCliques(C26, 0.82);

p = symamd(Hinf26); 
figure; 
spy(Hinf26(p,p)); 
print -depsc opdracht13a %used for output
figure;
imagesc(C26(p,p)); 
colorbar
print -depsc opdracht13b %used for output