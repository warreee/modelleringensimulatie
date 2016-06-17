function [F1, F2] = oef6(A, Z)

    figure
    colormap gray; imagesc(Z);
    pause
    figure
    image(A);
        
    pause
    F     = fft2(Z);
    figure;
    imagesc(100*log(1+abs(fftshift(F)))); colormap(gray); 
    pause
    F1     = fft2(Z);
    F2     = ifft2(F1);
    figure
    colormap(gray); imagesc(F2);
	
end