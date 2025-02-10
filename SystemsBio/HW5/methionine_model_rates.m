%file methionine_model.m
%from Martinov et al. (2000) Journal of Theoretical Biology vol. 204 pp. 521-532
%generates figures 5.10, 5.11, 5.12
%problem 5.6.6

function methionine_model

global n1adomet;

%parameter declaration
%MATI
global v_MATI_max ;
global K_MATI_m ;
global K_MATI_i ;
global Met;

%MATIII
global v_MATIII_max ;
global K_MATIII_m2 ;

%MET
global v_MET_max ;
global A_over_K_MET_m2 ;

%GNMT
global v_GNMT_max ;
global K_GNMT_m ;
global K_GNMT_i ;

%D
global alpha_d ;

%AHC
global K_AHC;
global Adenosine

%parameter assignment
%METI
v_MATI_max = 561;
K_MATI_m = 41;
K_MATI_i = 50;

%MATIII
v_MATIII_max = 22870; %22.87 mmol/hr/l;
K_MATIII_m2 = 21.1;

%MET
v_MET_max = 4544;
A_over_K_MET_m2 = 0.1;

%GNMT
v_GNMT_max = 10600; %10.6 mmol/hr/l;
K_GNMT_m = 4500;
K_GNMT_i = 20;

%D
alpha_d = 1333;

%AHC
K_AHC = 0.1;
Adenosine = 1;

%Methionine concentration
%Met=48.5; % monostable
Met=51; % bistable

%set simulation length
Tend=100;

%initial concentrations
S0=[10,10];

%specification of dynamics
ODEFUN=@methdt;


%simulation
[t,S]=ode45(ODEFUN, [0,Tend], S0);

%define states locally
AdoMet=S(end,1);
AdoHcy=S(end,2);

%auxilliary variables
K_MATIII_m1 = 20000/(1+ 5.7*(AdoMet/(AdoMet+600))^2);
K_MET_m1 = 10 * (1 + AdoHcy/4);
Hcy = AdoHcy*K_AHC/Adenosine;


v_MATI= v_MATI_max * (1/(1+ (K_MATI_m/Met)*(1+AdoMet/K_MATI_i))) ;
v_MATIII = v_MATIII_max * (1/(1+ (K_MATIII_m1*K_MATIII_m2)/(Met^2+Met*K_MATIII_m2)));
v_GNMT = v_GNMT_max * (1/(1+(K_GNMT_m/AdoMet)^2.3)) * (1/(1+AdoHcy/K_GNMT_i));
v_MET = v_MET_max * (1/(1+ K_MET_m1/AdoMet + 1/A_over_K_MET_m2 + (1/A_over_K_MET_m2)*(K_MET_m1/AdoMet)));
v_D = alpha_d * Hcy;

[v_MATI v_MATIII v_GNMT v_MET v_D]
end


%dynamics
function dS = methdt(t,S)

%parameter declaration
%MATI
global v_MATI_max ;
global K_MATI_m ;
global K_MATI_i ;
global Met;

%MATIII
global v_MATIII_max ;
global K_MATIII_m2 ;

%MET
global v_MET_max ;
global A_over_K_MET_m2 ;

%GNMT
global v_GNMT_max ;
global K_GNMT_m ;
global K_GNMT_i ;

%D
global alpha_d ;

%AHC
global K_AHC;
global Adenosine

%define states locally
AdoMet=S(1);
AdoHcy=S(2);

%auxilliary variables
K_MATIII_m1 = 20000/(1+ 5.7*(AdoMet/(AdoMet+600))^2);
K_MET_m1 = 10 * (1 + AdoHcy/4);
Hcy = AdoHcy*K_AHC/Adenosine;


v_MATI= v_MATI_max * (1/(1+ (K_MATI_m/Met)*(1+AdoMet/K_MATI_i))) ;
v_MATIII = v_MATIII_max * (1/(1+ (K_MATIII_m1*K_MATIII_m2)/(Met^2+Met*K_MATIII_m2)));
v_GNMT = v_GNMT_max * (1/(1+(K_GNMT_m/AdoMet)^2.3)) * (1/(1+AdoHcy/K_GNMT_i));
v_MET = v_MET_max * (1/(1+ K_MET_m1/AdoMet + 1/A_over_K_MET_m2 + (1/A_over_K_MET_m2)*(K_MET_m1/AdoMet)));
V_D = alpha_d * Hcy;

dAdoMetdt = (v_MATI + v_MATIII) - (v_GNMT+v_MET);
dAdoHcydt = ((v_GNMT+v_MET) - V_D)/(1+K_AHC/Adenosine);

dS=[dAdoMetdt; dAdoHcydt];


end

%graphics function:
%change properties of last curve in current figure
%Examples:
%     setcurve('color','red')
%     setcurve('color','green','linestyle','--')
%Type  help plot  to see available colors and line styles
function setcurve(varargin)
h=get(gca,'children');
set(h(1),varargin{:})
end


