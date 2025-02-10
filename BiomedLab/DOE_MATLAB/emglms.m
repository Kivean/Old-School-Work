function residual = emglms(ref, dat)
% EMGLMS - perform a lms fit between two curves, a reference curve and a
% data curve, and return the residual as a test of goodness of a fit
%
% residual = emglms(ref, dat)
%
% ref = input reference curve (1-column vector)
% dat = input data curve (1-column vector)

%% utilize immse to calculate error
err = immse(ref, dat);
residual = sqrt(err); %going from mean squared error to root mean squared