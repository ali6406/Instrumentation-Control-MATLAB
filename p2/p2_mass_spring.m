function dxdt=p2_mass_spring(t,x)
%Mass spring function for lab2  
M = 705;  %(Kg)
B = 30;   %(Nsec/m)
r = 1;    % dX/dt
Fa = 300; %(N)
K = 15;   %(N/m)
dxdt(1,1) = x(2);
dxdt(2,1) = -B/M*x(2)-K/M*x(1)^r+Fa/M;
