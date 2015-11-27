
Hinf26 = r0381767_buildCliques(C26, 0.82);

p = symamd(Hinf26); 
figure; 
spy(Hinf26(p,p)); 
print -depsc opdracht13a %used for output
figure;
imagesc(C26(p,p)); 
colorbar
print -depsc opdracht13b %used for output