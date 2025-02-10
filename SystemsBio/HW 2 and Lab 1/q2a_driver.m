clear all

% TODO define the timespan to simulation
tRange = [0 4];
tRange1 = [0 80];

% TODO define the initial conditions
Y0 = [1.5,3,2];

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode15s(@q2a_model,tRange,Y0);
[tSol1,YSol1] = ode15s(@q2a_model,tRange1,Y0);

% plot solutions to look like figure in lab

t = tiledlayout(1,2);

t1 = nexttile;
plot(tSol,YSol(:,1),'LineWidth',2)
hold on
plot(tSol,YSol(:,2),'LineWidth',2)
plot(tSol,YSol(:,3),'LineWidth',2)
legend('A','B','C','Location','southeast')
xlabel('Time (sec)')
hold off

t2 = nexttile;
plot(tSol1,YSol1(:,1),'LineWidth',2)
hold on
plot(tSol1,YSol1(:,2),'LineWidth',2)
plot(tSol1,YSol1(:,3),'LineWidth',2)
legend('A','B','C','Location','southeast')
xlabel('Time (sec)')
hold off

linkaxes([t1,t2],'y');
title(t, 'Behavior at Different Timescales','FontSize',18);
ylabel(t,'Concentration (mM)', 'FontSize',12);
t.TileSpacing = 'compact';



