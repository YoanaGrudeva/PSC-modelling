function out = RHS(y)
%A=1+tanh(t-5);
A=1
out=[-y(3)
    y(1)+y(2)
    y(1)^2-2*(A+exp(-A+y(4))-1-y(4))
    y(2)^2-2*(-A+exp(A-y(3)+y(4))-1+y(3)-y(4))]


