function dYdt = q1_model(t,Y)
    % Extract KE, KEP, KD, KDP from input vector Y
    KE = Y(1); %KdpE
    KEP = Y(2); %KdpEp
    KD = Y(3); %KdpD
    KDP = Y(4); %KdpDp

    
    % Define mass action laws 
    k1 = 0.0029; 
    k2 = 108; 
    k_2 = 1080; 
    k3 = 90;
    ATP = 1500;
    KDT = 1;
    KET = 1;
    
    % Define dadt, dbdt, dcdt from the ODEs
    %dKDdt = -k1*ATP*KD +k2*(KDT-KD)*KE - k_2*KD*(KET-KE)+ k3*KD*(KET-KE);
    %dKDPdt = k1*ATP*(KDT-KDP) -k2*KDP*(KET-KEP) + k_2*(KDT-KDP)*KDP;
    dKDdt = -k1*ATP*KD +k2*KDP*KE - k_2*KD*KEP+ k3*KD*KEP;
    dKDPdt = -dKDdt;
    %dKEdt = k_2*KD*(KET-KE) -k2*(KDT-KD)*KE + k3*KD*(KET-KE);
    %dKEPdt = -k_2*(KDT-KDP)*KEP +k2*KDP*(KET-KEP) - k3*(KDT-KDP)*KEP;
    dKEdt = k_2*KD*KEP -k2*KDP*KE + k3*KD*KEP;
    dKEPdt = -dKEdt;
   
    
    % Create output column vector dYdt
    dYdt = [dKDdt; dKDPdt; dKEdt; dKEPdt];
end 