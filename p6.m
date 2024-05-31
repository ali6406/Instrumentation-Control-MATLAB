%Transfer function
n = [0 0 30]; d = [1 5 6];
%Ramp response for transfer function
%G1(s)=G(s)/s
n1 = [0 0 0 30]; d1 = [1 5 30 0];
[y,x,t] = step(n1,d1);
%Plotting output y vs time t & t vs t i.e ramp signal on same graph window
v = [0 10 0 10];
subplot(2,1,1);
plot(t,y,'b'); %System response
axis(v); 
hold on;
plot(t,t,'r--'); %Ramp signal
grid;
title('Plot of Ramp Response of $$\mathbf{G(s) = \frac{30}{s^2 + 5s + 6}}$$', 'Interpreter', 'latex', 'FontSize', 14);
xlabel('Time'); ylabel('Amplitude'); 

%System for Arbitrary Input r(t)
t = 0:0.001:15;
r = sin(t) + exp(-0.2 * t);
y=lsim(n,d,r,t);
subplot(2,1,2);
plot(t,r,'b',t,y,'r--');
grid on;
title('Plot of System for Arbitrary Input $$\mathbf{r(t) = \sin(t) + e^{-0.2t}}$$', 'Interpreter', 'latex', 'FontSize', 14);
xlabel('Time'); ylabel('Amplitude');

