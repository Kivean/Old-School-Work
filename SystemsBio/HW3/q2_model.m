function dYdt = q2_model(t,Y)
    % Extract S1, S2, S3 from input vector Y, calling them a,b,c for
    % ease of use
    a = Y(1); %a
    b = Y(2); %b
    c = Y(3); %c
    
    % Define rates v0-v4
    v0 = 2; %mM/min
    v1 = (9*a)/(1+a); % Michaelis-Menten rates
    v2 = (12*b)/(0.4+b); 
    v3 = (15*c)/(3+c);
    
    % Define dadt, dbdt, dcdt from the ODEs
    dadt = v0 - v1;
    dbdt = v1 - v2;
    dcdt = v2 - v3;
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dbdt; dcdt];
end 