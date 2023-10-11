% \section{}
% Consider the Laplace Transform of $f(t)$ given by
% \[
%     F(s) = \frac{16s^2 + 23s + 13}{(s + 1)^2(s + 2)}
% \]

% \begin{enumerate}[label=(\alph*)]
%     \item What are the poles of $F(s)$?
%     \item Using the Final Value Theorem, predict the behaviour of $f(t)$ as $t \to \infty$
%     \item By hand, obtain the partial fraction expansion of $F(s)$
%     \item Use MATLAB's \texttt{partfrac} to confirm your result; provide the input commands you used.
%     \item Obtain $f(t)$, and confirm the prediction from (b) holds. Hint: $\lim_{t \to \infty} te^{-t} = 0$
% \end{enumerate}

clc; clear; close all;

syms s t;
F = (16*s^2 + 23*s + 13)/((s + 1)^2*(s + 2));
partfrac(F)