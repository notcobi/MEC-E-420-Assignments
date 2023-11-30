% \section{}
% Consider the closed-loop feedback system
% \begin{figure}[h]
%     \centering
%     \includegraphics[width=0.8\linewidth]{Questions/Figures/Q2ProblemDiagram.png}
%     \caption{Closed-loop feedback system}
%     \label{fig:Q2ProblemDiagram}
% \end{figure}
% with a plant model
% \begin{equation*}
%     G_p(s) = \frac{1}{s(s+1)(s+5)}
% \end{equation*}
% and a PID controller of the form
% \begin{equation*}
%     G_c(s) = k_p + \frac{k_i}{s} + k_d s
% \end{equation*}
% with gain values of $k_p = 39.42, k_i = 12.81, k_d = 30.32$ obtained by tuning, providing a stable
% closed-loop system. 
% \begin{enumerate}[label=(\alph*)]
%     \item Will this system be able to asymptotically track a reference step $r(t) = 1_{+}(t)$? A ramp
%     $r(t) = t$? A sine wave $r(t) = \sin t$? Explain why or why not in each case.
%     \item Using Simulink's PID Controller block, simulate the response of the system for each type of
%     reference input given in (b). Show the plot of $y$ in each case. Note: in the parameters of this
%     block, leave the Filter coefficient ($N$) at its default value of 100.
% \end{enumerate}

clc; clear all; close all;
syms s t;
Gc = 39.42 + 12.81/s + 30.32*s;
Gp = 1/(s*(s+1)*(s+5));
G_yr = Gc*Gp/(1+Gc*Gp);

R1 = laplace(1 + 0*t);
Rt = laplace(t);
Rsin = laplace(sin(t));

Y1 = simplify(G_yr*R1)
Yt = simplify(G_yr*Rt)
Ysin = simplify(G_yr*Rsin)