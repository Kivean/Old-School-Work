a = (0:.001:7);
b = 1/2*square(pi*a) + 1/2;
%plot(a,b,a,1/2*sin(pi*a)+1/2)

syms t
w0 = pi; To=2; q=(0:.1:7);
a0 = (1/To)*int(1,t,0,1);
 
%an = (2/To)*int(1*cos(n*w0*t),t,0,1);
%bn = (2/To)*int(1*sin(n*w0*t),t,0,1);

%ft = a0/2 +an*cos(n*w0*1)+bn*sin(n*w0*1);
%plot(a,ft);

x = (0:.1:7);
for n = 1:71
    m = n/10;
    x(n) = a0/2 + (2/To)*int(1*cos(m*w0*t),t,0,1)*cos(m*w0*1)+(2/To)*int(1*sin(m*w0*t),t,0,1)*sin(m*w0*1);
end

plot(q,x);

%function [x] = fourier(t)
%w0 = pi; To=2;
%a0 = (1/To);
%x = a0/2 + symsum((2/To)*int(1*cos(n*w0*t),t,0,1)*cos(n*w0*1)+(2/To)*int(1*sin(n*w0*t),t,0,1)*sin(n*w0*1),n,7);
%end