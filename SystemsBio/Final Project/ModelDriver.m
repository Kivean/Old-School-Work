%% Grayson Gerlich and Alexa Schwartz
% Re-implementation of Lambeth and Kushmerick's (2002) model of skeletal
% muscle glycolysis

clear all

%% Initial setup

% Timespan
tRange = [0 3e-03]; 
%tRange1 = [0 4];

% Initial Conditions
% GLY, G1P, G6P, F6P, FBP, DHAP, GAP, 13BPG, 3PG
% 2PG, PEP, PYR, LAC, ATP, ADP, AMP, Pi, PCr, NAD
% CR, NADH
Y0 = [112, 0.0589, 0.75, 0.228, 0.0723, 0.0764, 0.0355, 0.065, 0.052, ...
    0.005, 0.0194, 0.0994, 1.3, 8.2, 0.013, 0.00005, 4.1, 34.67, 0.5 ...
    (40-34.67), 0.5*0.001];

% Run solver
[tSol,YSol] = ode23(@Model,tRange,Y0);

%% Plot results

%t = tiledlayout(1,2);

%t1 = nexttile;
plot(tSol,YSol(:,13),'LineWidth',2)
hold on
plot(tSol,YSol(:,16),'LineWidth',2)
plot(tSol,YSol(:,15),'LineWidth',2)
plot(tSol,YSol(:,14),'LineWidth',2)
legend('Lac','ATP','ADP','Pi','Location','northeast')
xlabel('Time (sec)')
%title(t1, 'S1 = 0.3, S2 = 0.2, S3 = 0.1')
hold off


%t2 = nexttile;
%plot(tSol1,YSol1(:,1),'LineWidth',2)
%hold on
%plot(tSol1,YSol1(:,2),'LineWidth',2)
%plot(tSol1,YSol1(:,3),'LineWidth',2)
%legend('S1','S2','S3','Location','northeast')
%xlabel('Time (sec)')
%title(t2, 'S1 = 6, S2 = 4, S3 = 4')
%hold off

%title(t, 'First-Order Approximation Simulation','FontSize',18);
%ylabel(t,'Concentration (mM)', 'FontSize',12);
%t.TileSpacing = 'compact';



