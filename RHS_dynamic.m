function out = RHS_dynamic(t,y)
%A=1 + (1+tanh((t-5))) - 1.5*(1+tanh((t-10)))
Al = A_l(t);

out=[-y(3)
    y(1)+y(2)
    y(1)^2-2*(Al+exp(-Al+y(4))-1-y(4))
    y(2)^2-2*(-Al+exp(Al-y(3)+y(4))-1+y(3)-y(4))]
end