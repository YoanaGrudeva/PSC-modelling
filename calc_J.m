function J = calc_J()
solinit = bvpinit(linspace(0,1,100),[0 0 0 0]);
sol = bvp4c(@deriv_d,@bcs_d,solinit);

jp = sol.y(3,:);
jn = sol.y(4,:);
 
J = mean(jp+jn);
end