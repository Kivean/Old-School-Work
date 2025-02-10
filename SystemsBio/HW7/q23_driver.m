clear all

% TODO define the timespan to simulation
tRange = [0 300];
%tRange1 = [0 10];

% TODO define the initial conditions
Y0 = [0];
%Y1 = [0, 0];

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode23(@q23_model,tRange,Y0);
%[tSol1,YSol1] = ode23(@q1_model,tRange1,Y1);

% plot solutions to look like figure in lab

plot(tSol,YSol(:,1),'LineWidth',2)
hold on
legend('x','Location','northeast')
xlabel('Time')
ylabel('Concentration')
title('1 state model with time-delay')
hold off