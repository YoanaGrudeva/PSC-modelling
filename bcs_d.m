function res = bcs_d(ya,yb)
dynamic_parameters;
global Fp W A

res = [yb(1) - p_bar*exp(Fp-W-A)
       ya(2) - n_bar*exp(+W-A)
       ya(3)
       yb(4)]; 
end
