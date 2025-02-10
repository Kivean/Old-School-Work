function dYdt = lab1_model(t,Y)  % TODO - Write the function declaration. 
    % Name of the function is lab1_model
    % TODO - Extract a, b, c, and d from input vector Y
    a = Y(1); % a
    b = Y(2); % b
    c = Y(3); % c
    d = Y(4); % d
    
    % TODO - Define the constants k1 through k5
    k1 = 3; %mM/s
    k2 = 2; %1/s
    k3 = 2.5; %1/(mM*s)
    k4 = 3; %1/s
    k5 = 4; %1/s
    
    % TODO - Define dadt, dbdt, dcdt, dddt from the ODEs
    dadt = k1 - (k2*a) - (k3*(a*b));
    dbdt = (k2*a) - (k3*(a*b));
    dcdt = (k3*(a*b)) - (k4*c);
    dddt = (k3*(a*b)) - (k5*d);
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt; dddt];
end 