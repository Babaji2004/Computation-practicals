function [P] = Simpson(f,a,n);

% Outputs:
% P = The integral found using the Simpson method.
% Inputs:
% f = Function to be integrated.
% a = Upper limit of the integral.
% n = Number of parts we break the integral into.

P = f(0) + f(a);

for i = 1:n
    P = P + (2 * f(i * (a/n)) + 4 * f((i - 0.5) * (a/n))) * (a/(6 * n));
end

P

% Format long for more significant digits.