clear all

% TODO define the timespan to simulation
tRange = [0 40];
%tRange1 = [0 10];

% TODO define the initial conditions
Y0 = [0, 0, 0, 0];
%Y1 = [0, 0];

% call the solver of choice (ode45 is fine)
[tSol,YSol] = ode23(@q2_model,tRange,Y0);
%[tSol1,YSol1] = ode23(@q1_model,tRange1,Y1);

% plot solutions to look like figure in lab

%t = tiledlayout(1,2);

%t1 = nexttile;
plot(tSol,YSol(:,1),'LineWidth',2)
hold on
plot(tSol,YSol(:,2),'LineWidth',2)
plot(tSol,YSol(:,3),'LineWidth',2)
plot(tSol,YSol(:,4),'LineWidth',2)
legend('x','y','z','z2','Location','northeast')
xlabel('Time')
ylabel('Concentration')
title('4 step oscillator n<8')
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



