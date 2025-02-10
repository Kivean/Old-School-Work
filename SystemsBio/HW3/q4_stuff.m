k1 = 1;
k2 = 2;
x = linspace(0,10);
y = (x+x.^2/2)./(1+2*x+x.^2/2);
plot(x,y)
xlabel('[X] (mM)');
ylabel('Fractional Saturation');
title('Negative Cooperativity');