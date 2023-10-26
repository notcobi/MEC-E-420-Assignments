clc; clear all; close all;
syms s
A = [2 -1; -1 2];
ilaplace(inv(s*eye(2) - A))