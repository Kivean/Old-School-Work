[s1, s2] = meshgrid(-5:1:10, -5:1:15); %create grid to work on
ds1dt = 1+2.*s2-s1; %define ds1dt
ds2dt = 20./(1+s1.^2)-2.*s2-1; %define ds2dt

%define nullclines (not shown on quiver plot)
%s1null = 1 + 2.*s2;
%s2null = ((20./(1+s1.^2))-1)/2; 

%plot phase portrait
quiver(s1,s2,ds1dt, ds2dt, 2.5)