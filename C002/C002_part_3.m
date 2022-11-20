% C002_part3_Linear Curve fit.
M = csvread('linear.csv');     % Inputting all the data

x = M(:,1);                    % Vector x now contains all xi.
y = M(:,2);                    % Vector y now contains all yi.

Lnrcrvfit(x,y)
