clear all

% TODO define the timespan to simulation
tRange = [0 4];
tRange1 = [0 80];

% TODO define the initial conditions
Y0 = [1.5,5];
Y1 = [1.5,3,2];

% TODO - Define the constants k1 through k5
k1 = 0.05; %mM/s
k_1 = 0.005; %1/(mM*s)
k2 = 0.7; %1/s
k_2 = 0.4; %1/s

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode15s(@q2a_reducedmodel,tRange,Y0);
[tSol1,YSol1] = ode15s(@q2a_reducedmodel,tRange1,Y0);

[tSol2,YSol2] = ode15s(@q2a_model,tRange,Y1);
[tSol3,YSol3] = ode15s(@q2a_model,tRange1,Y1);

% back solve for approximated b and c concentrations
newB = (k_2/(k_2+k2))*YSol(:,2);
newC = (k2/(k_2+k2))*YSol(:,2);
newnewB = (k_2/(k_2+k2))*YSol1(:,2);
newnewC = (k2/(k_2+k2))*YSol1(:,2);

% plot solutions to look like figure in lab

t = tiledlayout(1,2);

t1 = nexttile;
plot(tSol,YSol(:,1),'LineWidth',2)
hold on
plot(tSol,newB,'LineWidth',2)
plot(tSol,newC,'LineWidth',2)
plot(tSol2,YSol2(:,1),'LineWidth',2)
plot(tSol2,YSol2(:,2),'LineWidth',2)
plot(tSol2,YSol2(:,3),'LineWidth',2)
legend('newA','newB','newC','A','B','C','Location','southeast')
xlabel('Time (sec)')
hold off

t2 = nexttile;
plot(tSol1,YSol1(:,1),'LineWidth',2)
hold on
plot(tSol1,newnewB,'LineWidth',2)
plot(tSol1,newnewC,'LineWidth',2)
plot(tSol3,YSol3(:,1),'LineWidth',2)
plot(tSol3,YSol3(:,2),'LineWidth',2)
plot(tSol3,YSol3(:,3),'LineWidth',2)
legend('newA','newB','newC','A','B','C','Location','southeast')
xlabel('Time (sec)')
hold off

linkaxes([t1,t2],'y');
title(t, 'Behavior at Different Timescales','FontSize',18);
ylabel(t,'Concentration (mM)', 'FontSize',12);
t.TileSpacing = 'compact';



