clear all
clf
close all
clc


global Al tspan ;
tspan = linspace(0, 14, 1e2);
%Al=1 + (1+tanh((t-5))) - 1.5*(1+tanh((t-10)));
Al = A_l(tspan.') ;


ion_master;

J_list = zeros(1,1e2);
Fp_l = y(:,3);
W_l = y(:,4);
global Fp A W ;

tic

for idx = 1: length(t)
    Fp = Fp_l(idx);
    W = W_l(idx);
    A = Al(idx);
    J_list(idx) = calc_J;  
end

toc 

figure(2)
plot(t,J_list);
xlabel('t')
ylabel('J')
figure(3)
plot(Al,J_list);
xlabel('A (V)')
ylabel('J')