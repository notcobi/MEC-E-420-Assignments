clc; clear; close all;
Ac = -4;
Bc = 1;
Cc = -5;
Dc = 1;

Ap = [0 1; -2 -3];
Bp = [1; 0];
Cp = [1 0];
Dp = 0;

syms s
Gc = Cc*inv(s*eye(1)-Ac)*Bc + Dc
Gp = Cp*inv(s*eye(2)-Ap)*Bp + Dp

Acl = [Ac -Bc*Cp; Bp*Cc Ap-Bp*Dc*Cp]
[V, D] = eig(Acl)
disp('Real part of eigenvalues of Acl: ')
real(D)