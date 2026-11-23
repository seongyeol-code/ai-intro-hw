clear all; close all; clc;

DATA = readmatrix('auto-mpg_ex.csv');

idx = find(DATA(:,3) <= 45);

y = DATA(idx,1);

x = DATA(idx,2:5);

A = x;
A(:,end+1) = ones(length(x), 1);

mdl = stepwiselm(A, y);
tmp = mdl.Coefficients
w = tmp.Variables

y_est = w(1,1) + w(2,1)*x(:,1) + w(3,1)*x(:,2) + w(4,1)*x(:,3) + w(5,1)*x(:,1).*x(:,3);

figure;
plot(y, y_est, 'ro'); xlabel('실제연비'); ylabel('추정연비'); xlim([10 50]); ylim([10 50]);

error_1 = mean(abs(y-y_est));
error_2 = 100*mean(abs(y-y_est)./y);
error_3 = sqrt(mean((y-y_est).^2));
