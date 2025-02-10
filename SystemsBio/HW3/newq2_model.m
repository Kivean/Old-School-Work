function dYdt = newq2_model(t,Y)
    % Extract S1, S2, S3 from input vector Y, calling them a,b,c for
    % ease of use
    a = Y(1); %a
    b = Y(2); %b
    c = Y(3); %c
    
    % Define mass action laws k0-k4
    k0 = 2; %mM/min
    k1 = 9; % Michaelis-Menten rates
    k2 = 30; 
    k3 = 5;
    
    % Define dadt, dbdt, dcdt from the ODEs
    dadt = k0 - k1*a;
    dbdt = k1*a - k2*b;
    dcdt = k2*b - k3*c;
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt];
end 