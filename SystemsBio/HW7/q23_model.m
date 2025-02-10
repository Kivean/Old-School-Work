function dYdt = q23_model(t,Y)
    % Extract x, y, z from input vector Y
    x = Y(1); %x
    
    % Define mass action laws 
    a = 150; 
    k = 1; 
    b = 0.2;
    A = 0.2;
    B = 0.2;
    G = 0.2;
    D = 15;
    n = 1;
    K = 1;
    
    % Define dadt, dbdt, dcdt from the ODEs

    dxdt = a/(k^n+(xz.^n)-b*x;
  
    
    % Create output column vector dYdt
    dYdt = [dxdt];
end 