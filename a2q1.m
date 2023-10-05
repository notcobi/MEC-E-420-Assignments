% this script will numericlaly solve the equation for a pendulum
% and use ODE45 to solve the equation for angle theta
% the results will be plotted and then a pendulum will be animated

% define ode function
function x-dot = pendulum(x, t)
    % define constants
    g = 9.81; % m/s^2
    M = 0.2; % kg
    u = @(t) 0.1*sin(t); % Nm
    L = 0.5; % m

    % define state dynamics
    x_dot = [
        x(2);
        (u(t) - M*g*L*sin(x(1)))/(M*L^2)
    ];
end

% define initial conditions
x0 = [pi/6, -1]
t = linspace(0, 10, 1000);

[t, x] = ode45(@pendulum, t, x0);

% plot results
figure(1)
plot(t, x(:, 1))
xlabel('Time (s)')
ylabel('Angle (rad)')
title('Angle vs Time')

figure(2)
plot(t, x(:, 2))
xlabel('Time (s)')
ylabel('Angular Velocity (rad/s)')
title('Angular Velocity vs Time')

% animate pendulum
figure(3)
L = 0.5; % m
for i = 1:length(t)
    % define pendulum position
    x_pendulum = L*sin(x(i, 1));
    y_pendulum = -L*cos(x(i, 1));

    % plot pendulum
    plot([0, x_pendulum], [0, y_pendulum], 'k', 'LineWidth', 2) % pendulum rod
    hold on
    plot(x_pendulum, y_pendulum, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r') % pendulum bob
    hold off
    axis([-1, 1, -1, 1])
    axis square
    title('Pendulum Animation')
    xlabel('x (m)')
    ylabel('y (m)')
    drawnow
end