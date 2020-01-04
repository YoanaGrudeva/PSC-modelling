% This solves the ion problem to get jp, jn Fp and W.
global tspan ;
M = zeros(4,4);
M(1,1) = 1 ;

options = odeset('Mass',M);

u_init=[-2; 2; 5; 1];
x = fsolve(@RHS,u_init);

[t,y] = ode15s(@RHS_dynamic,tspan,x,options);


plot(t,y(:,1),'r',t,y(:,2),'m',t,y(:,3),'g',t,y(:,4),'b');

