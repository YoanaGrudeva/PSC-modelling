function dUdx = deriv_d(x,U)
global Fp A W
dynamic_parameters;


p = U(1);
n = U(2);

RHS = zeros(1,2);
RHS(1) = -gm*(p*n - N^2)/(n + eps*p + K) + B*exp(-B*x)  ; % G-R
RHS(2) = gm*(p*n - N^2)/(n + K + eps*p) - B*exp(-B*x)  ; % R-G
 
dUdx = zeros(4,1);
dUdx(1) = -U(3)+Fp*U(1) ;
dUdx(2) = U(4) - Fp*U(1) ;
dUdx(3) = RHS(1) ;
dUdx(4) = RHS(2) ;
end