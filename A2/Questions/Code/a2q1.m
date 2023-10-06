clc; clear all
% define initial conditions
x0 = [pi/6, -1];
t = linspace(0, 10, 1000);

[t, x] = ode45(@pendulum, t, x0);

% plot results
figure(1)
plot(t, x(:, 1))
xlabel('Time (s)')
ylabel('Angle (rad)')
title('Angle vs Time')

% phase plot
figure(2)
plot(x(:, 1), x(:, 2))
xlabel('Angle (rad)')
ylabel('Angular Velocity (rad/s)')
title('Phase Plot')

% define ode function
function x_dot = pendulum(t, x)
    % define constants
    g = 9.81; % m/s^2
    M = 0.2; % kg
    u = @(t) 0.1*sin(t); % N
    L = 0.5; % m

    % define state dynamics
    x_dot = [
        x(2);
        (u(t) - M*g*L*sin(x(1)))/(M*L^2)
    ];
end
