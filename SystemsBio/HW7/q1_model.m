function dYdt = q1_model(t,Y)
    % Extract KE, KEP, KD, KDP from input vector Y
    P = Y(1); %P
    P1 = Y(2); %P1
    P2 = Y(3); %P2
    
    % Define mass action laws 
    a0 = 5; 
    a = 30; 
    a2 = 130;
    
    % Define dadt, dbdt, dcdt from the ODEs

    dPdt = a0-P;
    dP1dt = a*(1./(1+P1))-P1;
    dP2dt = a2*(1./(1+P2.^2))-P2;
  
    
    % Create output column vector dYdt
    dYdt = [dPdt; dP1dt; dP2dt];
end 