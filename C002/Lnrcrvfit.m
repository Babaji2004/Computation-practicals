function [a,b,r] = Lnrcrvfit(x,y)
% Inputs:
% x = independent variable
% y = dependent variable
% Outputs:
% a = Slope of best fit
% b = Intercept
% r = RMS value

p = max(size(x));   % Value of N.
q = sum(x);         % Sum of all xi.
r = x.'*x;          % Sum of all xi^2.
s = sum(y);         % Sum of all yi.
t = x.'*y;          % Sum of all xiyi.

M = [p q;q r];      % Matrix X.
N = [s ; t];        % Matrix Y.

A = M\N;

a = A(1)
b = A(2)

r = sqrt(((y-a*x-b).'*(y-a*x-b))/p)


end