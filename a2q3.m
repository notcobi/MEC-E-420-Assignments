clc
clear
% Find eigenvalues and eigenvectors of the matrix
syms t
A =[2, -1; -1, 2];
[V, D] = eig(A);

V = -sqrt(2)*V;
V*expm(D*t)
V*expm(D*t)*V^-1