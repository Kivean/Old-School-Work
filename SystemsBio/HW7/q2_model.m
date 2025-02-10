function dYdt = q2_model(t,Y)
    % Extract x, y, z from input vector Y
    x = Y(1); %x
    y = Y(2); %y
    z = Y(3); %z
    z2 = Y(4);
    
    % Define mass action laws 
    a = 360; 
    k = 1.368; 
    b = 1;
    A = 1;
    B = 0.6;
    G = 1;
    D = 0.8;
    E = 1;
    F = 1;
    n = 8;
    
    % Define dadt, dbdt, dcdt from the ODEs

    dxdt = a/(k^n+z.^n)-b*x;
    dydt = A*x-B*y;
    dzdt = G*y-D*z;
    dz2dt = E*z-F*z2;
  
    
    % Create output column vector dYdt
    dYdt = [dxdt; dydt; dzdt; dz2dt];
end 