clc , clear
%Name : Ali Zahid 
%Roll no: ME-21072
%I&C Lab 2

xo = [0,0];
%Calling Mass spring function for solving differential equations
[t,x] = ode45('p2_mass_spring',[0 200],xo);
%Plotting Position vs Time
figure;
plot(t,x(:,1),'b'); grid; 
xlabel('Time(sec)') , ylabel('Position(m)') 
title('Mass spring system') , legend('Position') 

%Plotting Velocity vs Time
figure;
plot(t,x(:,2),'r'); grid; 
xlabel('Time(sec)') , ylabel('Velocity(m/s)')
title('Mass spring system') , legend ('Speed')