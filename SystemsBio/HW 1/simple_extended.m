function dydt = simple_extended(t,y,p)

% Here is the right hand side for the 
% "simple" test from lecture 1
dydt=zeros(6,1);


% change the input here in the right hand side function
% let the input be 1 for the first 10 units of time
% then reduce it to 0.75 as suggested in the book
if t>10    
    input=0.75;
else
    input = 1;
end

% rename the variables
X=y(1);
Y=y(2);
Z=y(3);
TF=y(4);
G=y(5);
E=y(6);

% rename the parameters
a=p(1);
b=p(2);
c=p(3);
d=p(4);

% list the right hand sides for each variable
%X
dydt(1) = input - a*E*X^(0.5);

%Y
dydt(2) = a*E*X^(0.5) - b*Y^(0.5);

%Z
dydt(3) = b*Y^(0.5) -c*Z^(0.5);

%TF
dydt(4) = Z^d - TF^(0.5);

%G
dydt(5) = TF^(0.5) - G^(0.5);

%E
dydt(6) = G^(0.5) - E^(0.5);


end

