t = (-10:.001:10);

%input function
xt(t<0) = 0;
xt(t>=0) = .5;
xt(t>2) = 0;

%h(t) function
ht = exp(-t).*heaviside(t);
plot(t,ht);
%either this or the commented code below does the same
%job, I was just trying to find the best way to do it.

%h = exp(-t);
%ht(t<0) = 0;
%ht(t>=0) = h(t>=0);

%y(t) convolution function
yt = conv(ht,xt/sum(xt),'same');

subplot(2,1,1); 
plot(t,xt);
subplot(2,1,2); 
plot(t,ht,t,yt); 
