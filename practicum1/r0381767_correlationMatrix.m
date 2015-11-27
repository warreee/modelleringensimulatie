function [ C ] = r0381767_correlationMatrix( Predicted )
%Calculates the correlation matrix C
   %Uses the build-in function
    C = corrcoef(Predicted);
end

