x = ones(20,1); %sets up vector and initializes first value to 1
for i = 2:20
    x(i) = (x(i-1)/2)+2;
end