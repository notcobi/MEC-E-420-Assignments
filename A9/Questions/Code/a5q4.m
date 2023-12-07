clc; clear; close all;
syms s R1 R2 C L
A = [-1/(R1*C) 0; 0 -R2/L];
B = [1/(R1*C); 1/L];
c = [0 R2];
D = 0;

% Transfer function
G = c*inv(s*eye(2)-A)*B + D
