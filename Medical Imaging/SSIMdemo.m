%Give the function the boundary (given as 0-1 in HW) and number of samples 
%I am using 256 samples for simplicity
x = [0:(1/255):1];

%Define functions being used
func1 = sin(pi*x);
func2 = (4*x)-(4*x.^2);
func3 = 1-2*abs(x-0.5);

funca = func1.';
funcb = func2.';
funcc = func3.';

aa = funca*func1;
ab = funcb*func1;
ac = funcc*func1;
ba = funca*func2;
bb = funcb*func2;
bc = funcc*func2;
ca = funca*func3;
cb = funcb*func3;
cc = funcc*func3;


ima = mat2gray(ba);
imb = mat2gray(bc);
imc = mat2gray(ca);


ssimmap = ssim(ima,imb);
imshow(ssimmap,[])
% title(['Local SSIM Map with Global SSIM Value: ',num2str(ssimval)])


