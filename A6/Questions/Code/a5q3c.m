clc; clear; close all;
A1 = [0 1; -3 -2];
B1 = [0; 1];
C1 = [1 1];
D1 = 0;
[A2, B2, C2, D2] = tf2ss([1 1], [1 2 3]);


syms s
G1 = C1*inv(s*eye(2) - A1)*B1 + D1
G2 = C2*inv(s*eye(2) - A2)*B2 + D2