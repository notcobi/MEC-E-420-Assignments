clc; clear all; close all;
syms s
A = [2 -1; -1 2];
B = [2; 0];
C = [0 3];
D = 0;
x0 = [-1; 1];

Y = ilaplace(C*inv(s*eye(2) - A)*x0 + C*inv(s*eye(2) - A)*B*1/s + D*1/s)
