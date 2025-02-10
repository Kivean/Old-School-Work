function dYdt = q2a_model(t,Y)  % TODO - Write the function declaration. 
    % Name of the function is lab1_model
    % TODO - Extract a, b, c, and d from input vector Y
    a = Y(1); %a
    b = Y(2); %b
    c = Y(3); %c
    
    % TODO - Define the constants k1 through k5
    k1 = 0.05; %mM/s
    k_1 = 0.005; %1/(mM*s)
    k2 = 0.7; %1/s
    k_2 = 0.4; %1/s
    
    % TODO - Define dadt, dbdt, dcdt, dddt from the ODEs
    dadt = (k_1*b) - (k1*a);
    dbdt = -(k_1*b) + (k1*a) - (k2*b) + (k_2*c);
    dcdt = (k2*b) - (k_2*c);
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt];
end 