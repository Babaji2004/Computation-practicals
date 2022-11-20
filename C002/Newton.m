function x = Newton(f,df,x_0,n)
% Inputs:
% f = The input function.
% df = Derivative of the input function.
% x_0 = Starting point for finding the root.
% tol = The tolerance in the error after which it will stop iterating.
% Output:
% x = The root.

x = x_0;
for i = 1:n
    x = x - f(x)/df(x)
end

fzero(f,3)
end

% Format long for more significant digits.