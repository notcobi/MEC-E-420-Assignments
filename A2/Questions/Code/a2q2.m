% Declare symbolic variables
syms x1 x2 x3 x4 M_c g J_c J u x_10 R_c

% State dynamics
f = [
    x3;
    x4;
    (-M_c*g*sin(x2) + M_c*x1*x4^2)/(J_c/R_c^2 + M_c);
    (-2*M_c*x1*x3*x4 - M_c*g*x1*cos(x2) + u)/(M_c*x1^2 + J + J_c);
];

% State output
h = [x1];

% Compute the Jacobian of f and h
dfdx = jacobian(f, [x1 x2 x3 x4]);
dfdu = jacobian(f, u);
dhdx = jacobian(h, [x1 x2 x3 x4]);
dhdu = jacobian(h, u);

% Substitute in the equilibrium point
A = subs(dfdx, [x1 x2 x3 x4 u], [x_10 0 0 0 M_c*g*x_10]);
B = subs(dfdu, [x1 x2 x3 x4 u], [x_10 0 0 0 M_c*g*x_10]);
C = dhdx;
D = dhdu;

% Print the result 
pretty(A)
pretty(B)
pretty(C)
pretty(D)