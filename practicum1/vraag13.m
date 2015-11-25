
Hinf26 = r0381767_buildCliques(C26, 0.82);

p = symamd(Hinf26); 
figure; 
spy(Hinf26(p,p)); 
figure; 
imagesc(C26(p,p)); 
colorbar