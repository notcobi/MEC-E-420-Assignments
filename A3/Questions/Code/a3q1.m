clc; clear all; close all;

A = [2 -1; -1 2];
B = [2; 0];
C = [0 3];
D = [0];
x0 = [-1; 1];

syms t tau

% Part (a)
x_zi = expm(A*t)*x0;
y_zi = C*x_zi;

disp('Part (a)')
disp('x_zi(t) = ')
disp(x_zi)
disp('y_zi(t) = ')
disp(y_zi)

% Part (b)
x_zs = int(expm(A*(t-tau))*B, tau, 0, t);
y_zs = C*x_zs;

disp('Part (b)')
disp('x_zs(t) = ')
disp(expand(x_zs))
disp('y_zs(t) = ')
disp(expand(y_zs))

% Part (c)
x = x_zi + x_zs;
y = C*x;

disp('Part (c)')
disp('x(t) = ')
disp(expand(x))
disp('y(t) = ')
disp(expand(y))