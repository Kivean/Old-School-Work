clear all

% TODO define the timespan to simulation
tRange = [0 4];

% TODO define the initial conditions
Y0 = zeros(1,4);

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode15s(@lab1_model,tRange,Y0);

% plot solutions to look like figure in lab

plot(tSol,YSol(:,1),'-k','LineWidth',2)
hold on
plot(tSol,YSol(:,2),'--k','LineWidth',2)
plot(tSol,YSol(:,3),':k','LineWidth',2)
plot(tSol,YSol(:,4),'-.k','LineWidth',2)
legend('A','B','C','D','Location','southeast')
xlabel('Time (sec)')
ylim([0 1]);
ylabel('Concentration (mM)')




