
clc
clf
clear all
parameters;

solinit = bvpinit(linspace(0,1,100),[0 0 0 0]);
tic
sol = bvp4c(@deriv,@bcs,solinit);
p = sol.y(1,:);
n = sol.y(2,:);
jp = sol.y(3,:);
jn = sol.y(4,:);
toc
figure(1)
plot(sol.x, p,'r');
figure(2)
plot(sol.x, n ,'b');
figure(3)
plot(sol.x, jp+jn);
