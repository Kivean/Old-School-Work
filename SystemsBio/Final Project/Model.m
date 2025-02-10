%% Grayson Gerlich and Alexa Schwartz
% Re-implementation of Lambeth and Kushmerick's (2002) model of skeletal
% muscle glycolysis

function dYdt = Model(t,Y)
    %% Extract initial conditions from the input vector
    
    GLY = Y(1); %Glycogen
    G1P = Y(2); %Glucose-1-phosphate
    G6P = Y(3); %Glucose-6-phosphate
    F6P = Y(4); %Fructose-6-phosphate
    FBP = Y(5); %Fructose 1,6-biphosphate
    DHAP = Y(6); %Dihydroxyacetone phosphate
    GAP = Y(7); %Glyceraldehyde 3-phosphate
    a13BPG = Y(8); %1,3-biphosphoglycerate
    a3PG = Y(9); %3-phosphoglycerate
    a2PG = Y(10); %2-phosphoglycerate
    PEP = Y(11); %Phosphoenolpyruvate
    PYR = Y(12); %Pyruvate
    LAC = Y(13); %Lactate
    Pi = Y(14); %Inorganic phosphate
    ADP = Y(15); %Adenosine diphosphate
    ATP = Y(16); %Adenosine triphosphate
    AMP = Y(17); %Adenosine monophosphate
    PCr = Y(18); %Phosphocreatine
    NAD = Y(19); %Nicotinamide adenine dinucleotide
    Cr = Y(20); %Creatine
    NADH = Y(21); %Nicotinamide adenine dinucleotide (reduced)


    %% Define kinetic paramaters and activites by enzyme
    
    % Enzyme
    % Prameter = value;
    
    % Glycogen Phosphorylase A
    GPA_KGLYf = 1.7;
    GPA_KPi = 4;
    GPA_KiGLY = 2;
    GPA_KiPi = 4.7;
    GPA_KGLYb = 0.15;
    GPA_KG1P = 2.7;
    GPA_KiG1P = 10.1;
    GPA_Keq = 0.42;
    GPA_Vmax = 0.02;
    
    % Glycogen Phosphorylase B
    GPB_KPi = 0.2;
    GPB_KiPi = 4.6;
    GPB_KiGLYf = 15;
    GPB_KG1P = 1.5;
    GPB_KiG1P = 7.4;
    GPB_KiGLYb = 4.4;
    GPB_K_AMP = 0.0000019;
    GPB_nH = 1.75;
    GPB_Keq = 16.62;
    GPB_Vmax = 0.03;
    
    % Phosphoglucomutase
    PGLM_KG1P = 0.063;
    PGLM_KG6P = 0.03;
    PGLM_Keq = 0.45;
    PGLM_Vmax = 0.48;
    
    % Phosphoglucoisomerase
    PGI_KG6P = 0.48;
    PGI_KF6P = 0.031;
    PGI_Keq = 242;
    PGI_Vmax = 0.88;
    
    % Phosphofructokinase
    PFK_KF6P = 0.18;
    PFK_K_F6P = 20;
    PFK_KATP = 0.08;
    PFK_K_ATP = 0.25;
    PFK_KFBP = 4.02;
    PFK_K_FBP = 4.02;
    PFK_KADP = 2.7;
    PFK_K_ADP = 2.7;
    PFK_KiATP = 0.87;
    PFK_KaAMP = 0.06;
    PFK_d = 0.01;
    PFK_e = 0.01;
    PFK_L0 = 13;
    PFK_Keq = 0.000095;
    PFK_Vmax = 0.056;
    
    % Aldolase
    ALD_KFBP = 0.05;
    ALD_KDHAP = 2;
    ALD_KGAP = 1;
    ALD_Keq = 0.052;
    ALD_Vmax = 0.104;
    
    % Triose Phosphate Isomerase
    TPI_KGAP= 0.32;
    TPI_KDHAP = 0.61;
    TPI_Keq = 0.089;
    TPI_Vmax = 12;
    
    % Glyceraldehyde-3-Phosphate Dehydrogenase
    GAPDH_KGAP = 0.0025;
    GAPDH_KNAD = 0.09;
    GAPDH_KPi = 0.29;
    GAPDH_K13BPG = 0.0008;
    GAPDH_KNADH = 0.0033;
    GAPDH_Keq = 57109;
    GAPDH_Vmax = 1.265;
    
    % Phosphoglycerate Kinase
    PGK_K13BPG = 0.0022;
    PGK_KADP = 0.05;
    PGK_K3PG = 1.2;
    PGK_KATP = 0.36;
    PGK_Keq = 0.18;
    PGK_Vmax = 1.12;
    
    % Phosphoglycerate Mutase
    PGM_K3PG = 0.2;
    PGM_K2PG = 0.014;
    PGM_Keq = 0.49;
    PGM_Vmax = 1.12;
    
    % Enolase
    EN_K2PG = 0.12;
    EN_KPEP = 0.37;
    EN_Keq = 10304;
    EN_Vmax = 0.192;
    
    % Pyruvate Kinase
    PK_KPEP = 0.08;
    PK_KADP = 0.3;
    PK_KPYR = 7.05;
    PK_KATP = 1.13;
    PK_Keq = 16198;
    PK_Vmax = 1.44;
    
    % Lactate dehydrogenase
    LDH_KPYR = 0.335;
    LDH_KNADH = 0.002;
    LDH_KLAC= 17;
    LDH_KNAD = 0.849;
    LDH_Keq = 233;
    LDH_Vmax = 1.92;
    
    % Creatine Kinase
    CK_KPCr = 1.11;
    CK_KiATP = 3.5;
    CK_KiADP = 0.135;
    CK_KiPCr = 3.9;
    CK_KCr = 3.8;
    CK_Keq = 2.21;
    CK_Vmax = 0.5;
    
    % Adenylate Kinase
    ADK_KAMP = 0.32;
    ADK_KATP = 0.27;
    ADK_KADP = 0.35;
    ADK_Vmax = 0.88;
    ADK_Keq = 0.1;
    
    %% Governing equations for each enzyme
    
    % Glycogen Phosphorylase a
    GPA_Vmaxr = (GPA_Vmax*GPA_KGLYb*GPA_KiG1P)/(GPB_KiGLYf*GPA_KPi*GPA_Keq);
    
    VGPA = (GPA_Vmax*((GLY*Pi)/(GPB_KiGLYf*GPA_KPi)) - ...
        GPA_Vmaxr*((GLY*Pi)/(GPA_KGLYb*GPA_KiG1P)))/(1+(GLY/GPB_KiGLYf) ...
        +(Pi/GPA_KiPi)+(GLY/GPB_KiGLYb)+(G1P/GPA_KiG1P)+ ...
        ((GLY*Pi)/(GPA_KGLYf*GPA_KiPi))+((GLY*G1P)/(GPA_KGLYb*GPA_KiG1P)));
    
    % Glycogen Phosphorylase b
    GPB_Vmaxr = (GPB_Vmax*GPB_KiGLYb*GPB_KG1P)/(GPA_KGLYf*GPB_KiPi*GPB_Keq);
    
    VGPB = (GPA_Vmax*((GLY*Pi)/(GPB_KiGLYf*GPB_KPi)) - ...
        GPB_Vmaxr*((GLY*Pi)/(GPB_KiGLYb*GPB_KG1P)))/(1+(GLY/GPB_KiGLYf) ...
        +(Pi/GPB_KiPi)+(GLY/GPB_KiGLYb)+(G1P/GPB_KiG1P)+ ...
        ((GLY*Pi)/(GPB_KiGLYf*GPB_KiPi))+((GLY*G1P)/(GPB_KiGLYb*GPB_KiG1P))) ...
        * (((AMP^GPB_nH)/GPB_K_AMP)/(1+((AMP^GPB_nH)/GPB_K_AMP)));
    
    % Total GP Flux
    frac_a = 0.4; % Fraction of GPa
    frac_b = 0.6; % Fraction of GPb
    fluxGP = (frac_a*VGPA) + (frac_b*VGPB);
    
    % Phosphoglucomutase
    PGLM_Vmaxr = (PGLM_Vmax*PGLM_KG6P)/(PGLM_KG1P*PGLM_Keq);
        
    VPGLM = ((PGLM_Vmax*(G1P/PGLM_KG1P))-(PGLM_Vmaxr*(G6P/PGLM_KG6P)))/...
        (1+(G1P/PGLM_KG1P)+(G6P/PGLM_KG6P));
    
    % Phosphoglucoisomerase
    PGI_Vmaxf = (PGI_Vmax*PGI_KG6P*PGI_Keq)/PGI_KF6P;
    
    VPGI = ((PGI_Vmaxf*(G6P/PGI_KG6P))-(PGI_Vmax*(F6P/PGI_KF6P)))/...
        (1+(G6P/PGI_KG6P)+(F6P/PGI_KF6P));
    
    % Phosphofructokinase
    PFK_Vmaxr = (PFK_Vmax*PFK_KADP*PFK_KFBP)/(PFK_KATP*PFK_KF6P);
    
    PFK_a = (PFK_KF6P*PFK_KATP)/(PFK_K_F6P*PFK_K_ATP);
    
    PFK_L = PFK_L0*(((1+(ATP/PFK_KiATP))/(1+PFK_d*(ATP/PFK_KiATP)))*...
        ((1+PFK_e*(AMP/PFK_KaAMP))/(1+(AMP/PFK_KaAMP)))).^4;
    
    PFK_delta = (1+(F6P/PFK_KF6P))*(1+(ATP/PFK_KATP))+(ADP/PFK_KADP)+...
        (FBP/PFK_KFBP)*(1+(ADP/PFK_KADP));
    
    PFK_deltap = (1+(F6P/PFK_K_F6P))*(1+(ATP/PFK_K_ATP))+(ADP/PFK_K_ADP)+...
        (FBP/PFK_K_FBP)*(1+(ADP/PFK_K_ADP));
    
    VPFK = ((PFK_Vmax*((ATP*F6P)/(PFK_KATP*PFK_KF6P))-PFK_Vmaxr*...
        ((ADP*FBP)/(PFK_KADP*PFK_KFBP)))/PFK_delta)*((1+PFK_a*PFK_L*...
        (PFK_deltap/PFK_delta).^3)/(1+PFK_L*(PFK_deltap/PFK_delta).^4));
    
    % Aldolase
    ALD_Vmaxr = (ALD_Vmax*ALD_KDHAP*ALD_KGAP)/(ALD_KFBP*ALD_Keq);
    
    VALD = ((ALD_Vmax*(FBP/ALD_KFBP))-(ALD_Vmaxr*((DHAP*GAP)/(ALD_KDHAP*...
        ALD_KGAP))))/(1+(FBP/ALD_KFBP)+(DHAP/ALD_KDHAP)+(GAP/ALD_KGAP));
    
    % Triose Phosphate Isomerase
    TPI_Vmaxr = (TPI_Vmax*TPI_KDHAP)/(TPI_KGAP*TPI_Keq);
    
    VTPI = ((TPI_Vmax*(GAP/TPI_KGAP))-(TPI_Vmaxr*(DHAP/TPI_KDHAP)))/...
        (1+(GAP/TPI_KGAP)+(DHAP/TPI_KDHAP));
    
    % Glyceraldehyde-3-phosphate Dehydrogenase
    GAPDH_Vmaxr = (GAPDH_Vmax*GAPDH_K13BPG*GAPDH_KNADH)/(GAPDH_KGAP*...
        GAPDH_KNAD*GAPDH_KPi*GAPDH_Keq);
    
    GAPDH_D = 1+(GAP/GAPDH_KGAP)+(NAD/GAPDH_KNAD)+(Pi/GAPDH_KPi)+...
        ((GAP*NAD)/(GAPDH_KGAP*GAPDH_KNAD))+((GAP*NAD*Pi)/(GAPDH_KGAP*...
        GAPDH_KNAD*GAPDH_KPi))+(a13BPG/GAPDH_K13BPG)+(NADH/GAPDH_KNADH)+...
        ((a13BPG*NADH)/(GAPDH_K13BPG*GAPDH_KNADH));
    
    VGAPDH = ((GAPDH_Vmax*((GAP*NAD*Pi)/(GAPDH_KGAP*GAPDH_KNAD*GAPDH_KPi)))-...
        (GAPDH_Vmaxr*((a13BPG*NADH)/(GAPDH_K13BPG*GAPDH_KNADH))))/GAPDH_D;
    
    % Phosphoglycerate Kinase
    PGK_Vmaxf = (PGK_Vmax*PGK_K13BPG*PGK_KADP*PGK_Keq)/(PGK_K3PG*PGK_KATP);
    
    VPGK = ((PGK_Vmaxf*((a13BPG*ADP)/(PGK_K13BPG*PGK_KADP)))-PGK_Vmax*...
        ((a3PG*ATP)/(PGK_K3PG*PGK_KATP)))/(1+(a13BPG/PGK_K13BPG)+...
        (ADP/PGK_KADP)+((a13BPG*ADP)/(PGK_K13BPG*PGK_KADP))+(a3PG/PGK_K3PG)+...
        (ATP/PGK_KATP)+((a3PG*ATP)/(PGK_K3PG*PGK_KATP)));
    
    % Phosphoglyceromutase
    PGM_Vmaxr = (PGM_Vmax*PGM_K2PG)/(PGM_K3PG*PGM_Keq);
    
    VPGM = ((PGM_Vmax*(a3PG/PGM_K3PG))-(PGM_Vmaxr*(a2PG/PGM_K2PG)))/(1+...
        (a3PG/PGM_K3PG)+(a2PG/PGM_K2PG));
    
    % Enolase
    EN_Vmaxr = (EN_Vmax*EN_KPEP)/(EN_K2PG*EN_Keq);
    
    VENOL = ((EN_Vmax*(a2PG/EN_K2PG))-(EN_Vmaxr*(PEP/EN_KPEP)))/...
        (1+(a2PG/EN_K2PG)+(PEP/EN_KPEP));
    
    % Pyruvate Kinase
    PK_Vmaxr = (PK_Vmax*PK_KATP*PK_KPYR)/(PK_KPEP*PK_KADP*PK_Keq);
    
    VPK = ((PK_Vmax*((PEP*ADP)/(PK_KPEP*PK_KADP)))-(PK_Vmaxr*((PYR*ATP)/...
        (PK_KPYR*PK_KATP))))/(1+(PEP/PK_KPEP)+(ADP/PK_KADP)+((PEP*ADP)/...
        (PK_KPEP*PK_KADP))+(PYR/PK_KPYR)+(ATP/PK_KATP)+((PYR*ATP)/...
        (PK_KPYR*PK_KATP)));
    
    % Lactate Dehydrogenase
    LDH_Vmaxr = (LDH_Vmax*LDH_KLAC*LDH_KNAD)/(LDH_KPYR*LDH_KNADH*LDH_Keq);
    
    VLDH = (((LDH_Vmax*PYR*NADH)/(LDH_KPYR*LDH_KNADH))-((LDH_Vmaxr*LAC*NAD)/...
        (LDH_KLAC*LDH_KNAD)))/(1+(PYR/LDH_KPYR)+(NADH/LDH_KNADH)+...
        ((PYR*NADH)/(LDH_KPYR*LDH_KNADH))+(LAC/LDH_KLAC)+(NAD/LDH_KNAD)+...
        ((LAC*NAD)/(LDH_KLAC*LDH_KNAD)));
    
    LACout = 0.2*LAC;
    
    % Creatine Kinase
    CK_Vmaxf = (CK_Vmax*CK_KiATP*CK_KCr*CK_Keq)/(CK_KiADP*CK_KPCr);
    
    VCK = ((CK_Vmax*((ATP*Cr)/(CK_KiATP*CK_KCr)))-(CK_Vmaxf*((ADP*PCr)/...
        (CK_KiADP*CK_KPCr))))/(1+(ADP/CK_KiADP)+(PCr/CK_KiPCr)+...
        ((ADP*PCr)/(CK_KiADP*CK_KPCr))+(ATP/CK_KiATP)+((ATP*Cr)/...
        (CK_KiATP*CK_KCr)));
    
    % Adenosine Kinase
    ADK_Vmaxr = (ADK_Vmax*(ADK_KADP.^2))/(ADK_KATP*ADK_KAMP*ADK_Keq);
    
    VADK = ((ADK_Vmax*((ATP*AMP)/(ADK_KATP*ADK_KAMP)))-(ADK_Vmaxr*...
        ((ADP^2)/(ADK_KADP.^2))))/(1+(ATP/ADK_KATP)+(AMP/ADK_KAMP)+...
        ((ATP*AMP)/(ADK_KATP*ADK_KAMP))+(2*ADP/ADK_KADP)+((ADP.^2)/...
        (ADK_KADP.^2)));
    
    % ATPase
    k = 0.075; %rest
    %k = 0.75; %minimal activity
    %k = 7.5; %maximal activity
    VATPase = k*ATP;
    
    %% Differential Equations and Output
    
    % Model differential equations for the core model
    dGLYdt = -fluxGP;
    dG1Pdt = fluxGP - VPGLM;
    dG6Pdt = VPGLM - VPGI;
    dF6Pdt = VPGI - VPFK;
    dFBPdt = VPFK - VALD;
    dDHAPdt = VALD + VTPI;
    dGAPdt = VALD - VTPI - VGAPDH;
    d13BPGdt = VGAPDH - VPGK;
    d3PGdt = VPGK - VPGM;
    d2PGdt = VPGM - VENOL;
    dPEPdt = VENOL - VPK;
    dPYRdt = VPK - VLDH;
    dLACdt = VLDH - LACout;
    
    % Model differential equations for the phosphate flux
    dPidt = -fluxGP - VGAPDH + VATPase;
    dADPdt = VPFK - VPGK - VPK + 2*VADK + VCK + VATPase;
    dATPdt = -VPFK + VPGK + VPK - VADK - VCK - VATPase;
    dAMPdt = -VADK;
    dPCrdt = VCK;
    dCrdt = -VCK;
    dNADHdt = VGAPDH - VLDH;
    dNADdt = -VGAPDH + VLDH;
    
    
    % Create output column vector dYdt
    dYdt = [dGLYdt; dG1Pdt; dG6Pdt; dF6Pdt; dFBPdt; dDHAPdt; dGAPdt; ...
        d13BPGdt; d3PGdt; d2PGdt; dPEPdt; dPYRdt; dLACdt; dPidt; ...
        dADPdt; dATPdt; dAMPdt; dPCrdt; dNADHdt; dCrdt; dNADdt];
end 