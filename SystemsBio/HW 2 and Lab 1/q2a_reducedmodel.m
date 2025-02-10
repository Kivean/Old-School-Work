function dYdt = q2a_reducedmodel(t,Y)  % TODO - Write the function declaration. 
    % Name of the function is lab1_model
    % TODO - Extract a, b, c, and d from input vector Y
    a = Y(1); %a
    d = Y(2); %d
    
    % TODO - Define the constants k1 through k5
    k1 = 0.05; %mM/s
    k_1 = 0.005; %1/(mM*s)
    k2 = 0.7; %1/s
    k_2 = 0.4; %1/s
    
    % TODO - Define dadt, dbdt, dcdt, dddt from the ODEs
    dadt = (k_1*d) - (k1*a);
    dddt = (k1*a) - k_1*((k_2*d)/(k_2+k2));
    
   
    
    % Create output column vector dYdt
    dYdt = [dadt; dddt];
end 