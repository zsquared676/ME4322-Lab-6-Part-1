% Solving differential equations generated using bond graph technique

clc;
clear;
close all;

% Initial conditions
% x(1) = momentum, p [kg*m/s]
% x(2) = displacement, q [m]
x0 = [80; 0];

% Simulation time
timespan = [0 10];

% Solve differential equations
[t,x] = ode45(@MassSpringDamper_Oct8, timespan, x0);

% Momentum response
figure(1);
plot(t, x(:,1), 'b-', 'LineWidth', 1.5);
xlabel('Time, $t$ (s)', 'Interpreter', 'latex');
ylabel('Momentum, $p$ (kg$\cdot$m/s)', 'Interpreter', 'latex');
title('Momentum Response', 'Interpreter', 'latex');
grid on;
box on;

% Displacement response
figure(2);
plot(t, x(:,2), 'r-', 'LineWidth', 1.5);
xlabel('Time, $t$ (s)', 'Interpreter', 'latex');
ylabel('Displacement, $q$ (m)', 'Interpreter', 'latex');
title('Displacement Response', 'Interpreter', 'latex');
grid on;
box on;

