function dYdt = q1e_model(t,Y)  % TODO - Write the function declaration. 
    % Name of the function is lab1_model
    % TODO - Extract a, b, c, and d from input vector Y
    a = Y(1); %a
    b = Y(2); %b
    c = Y(3); %c
    d = Y(4); %d
    e = Y(5); %e
    f = Y(6); %f
    
    % TODO - Define the constants k1 through k5
    k0 = 5; %mM/s
    k1 = 3; %1/(mM*s)
    k2 = 1; %1/s
    k3 = 4; %1/s
    k4 = 1; %1/s
    k5 = 5; %1/s
    
    % TODO - Define dadt, dbdt, dcdt, dddt from the ODEs
    dadt = -(k1*(a*b))+ k0;
    dbdt = (k2*d) - (k1*(a*b));
    dcdt = (k1*(a*b)) - (k3*c);
    dddt = (k1*(a*b)) - (k2*d);
    dedt = (k3*c) - (k4*e);
    dfdt = (k3*c) - (k5*f);
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt; dddt; dedt; dfdt];
end 