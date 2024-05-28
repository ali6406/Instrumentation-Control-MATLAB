clc , clear
%Name : Ali Zahid 
%Roll no: ME-21072
%I&C Lab 3

XO = [0;0;0;0]; %(Initial xb, vb, xa, va)
%Calling Multiple element function for solving differential equations
[t,X] = ode45('mechanical_rotational_sys',[0 200],XO);
figure;
subplot(2,1,1);
plot(t,X(:,1));
hold on; % Activate hold on to overlay plots
plot(t,X(:,2),'r');
xlabel('Time(t)'); ylabel ('Ang disp 01 / Ang velocity w1');
title ('Mechanical Rotational System'); legend ('01','w1');
grid;
subplot(2,1,2);
plot(t,X(:,3)); 
hold on; % Activate hold on to overlay plots
plot(t,X(:,4),'r');
xlabel('Time(t)'); ylabel('Ang disp 02 / Ang velocity w2');
title ('Mechanical Rotational System'); legend ('02', 'w2');
grid;
