% simple_driver
% Dr. Leiderman 1/8/2021
% This code will simulate the system (1.1) 
% from Voit Chapter 1, page 8

% clear all variable
clear all

% close all figures
close all

% set up the time span over which to simulate
tspan = linspace(0,30,61);

% set up the initial conditions for all the species
% y0 = (X,Y,Z)
% since it has 3 species, it is a 1 by 3 vector
% set all three initial conditions to 1
y0=ones(1,3);

% set up all parameters to send to the ODE integrator
% p=(a,b,c,E), set them all to ones for now and 
% assume that the enzyme is constant
% NOTICE that this means E is assumed to be 
% a parameter here and not a variable
p=[1,1,1,1];

% call the ODE solver ode15s instead of ode45
% to send parameters to the ode solver, use the following command:
[tSol,ySol] = ode15s(@(tSol,ySol)simple(tSol,ySol,p),tspan,y0);


% plot the solutions
plot(tSol,ySol(:,1),'b','LineWidth',2)
hold on
plot(tSol,ySol(:,2),'r','LineWidth',2)
plot(tSol,ySol(:,3),'g','LineWidth',2)

% label the axes
xlabel('time')
ylabel('concentration')

% set the axis to include desired ranges for plot
axis([0 tspan(end) 0 max(ySol(:,1))])


