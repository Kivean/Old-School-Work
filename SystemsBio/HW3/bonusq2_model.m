function dYdt = bonusq2_model(t,Y)
    % Extract S1, S2, S3 from input vector Y, calling them a,b,c for
    % ease of use
    a = Y(1); %a
    b = Y(2); %b
    c = Y(3); %c
    
    % Define mass action laws k0-k4
    k0 = 2; %mM/min
    k1 = 9*a-9*a^2; % Michaelis-Menten rates
    k2 = 30*b - 75*b^2; 
    k3 = 5*c - (5*c^2)/3;
    
    % Define dadt, dbdt, dcdt from the ODEs
    dadt = k0 - k1;
    dbdt = k1 - k2;
    dcdt = k2 - k3;
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt];
end 