clear all

% TODO define the timespan to simulation
tRange = [0 1.5];

% TODO define the initial conditions
Y0 = [1,1,0.5,0,0,0];

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode15s(@q1e_model,tRange,Y0);

% plot solutions to look like figure in lab

plot(tSol,YSol(:,1),'LineWidth',2)
hold on
plot(tSol,YSol(:,2),'LineWidth',2)
plot(tSol,YSol(:,3),'LineWidth',2)
plot(tSol,YSol(:,4),'LineWidth',2)
plot(tSol,YSol(:,5),'LineWidth',2)
plot(tSol,YSol(:,6),'LineWidth',2)
legend('A','B','C','D','E','F','Location','southeast')
xlabel('Time (sec)')
ylabel('Concentration (mM)')




