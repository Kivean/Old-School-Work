%Grayson Gerlich
%SSIM implementation with simple functions in 2D
%For the most part, I've tried to use the notation as it is in the paper

%Give the function the boundary (given as 0-1 in HW) and number of samples 
%I am using 256 samples for simplicity
x = [0:(1/255):1];

%Define functions being used
func1 = sin(pi*x);
func2 = x-x.^2;
func3 = 1-2*abs(x-0.5);

%Get dynamic range.  For simplicity, I take the maximum dynrange out of
%the three functions given, assuming they all start at 0
L = max([range(func1) range(func2) range(func3)]);

%Define constants and functions as needed for the equation
K = [0.01, 0.03]; %as given in paper
C1 = (K(1)*L)^2;
C2 = (K(2)*L)^2;
window = 1;

%Select which function is the reference and which will be tested
ref = func1;
test = func3;

%Compute means with window size
b = (1/window)*ones(1,window); %defining moving average for the sliding
a = 1;                         %filter, matters not with window = 1 :)
u_x = filter(b,a,ref);
u_y = filter(b,a,test);

%Compute variances (and one stdev) with window size
var_x = movvar(ref,window);
var_y = movvar(test,window);
std_xy = movstd(ref.*test,window); %to calculuate rho_xy, the paper defines
                                   %it as the stdev of the inner product

%Get it done, numerator and denominator first
num = ((2*(u_x.*u_y)+C1) .* (2*std_xy + C2));
den = ((u_x.^2 + u_y.^2 + C1) .* (var_x + var_y + C2));
ssim = num./den;        %and then all together
mssim = mean(ssim);     %calculate the mssim from the ssim

%Data display
subplot(1,3,1);
plot(x, ref)
title('Reference Function')
subplot(1,3,2);
plot(x, test)
title('Tested Function')
subplot(1,3,3);
plot(x, ssim)
title('SSIM')


