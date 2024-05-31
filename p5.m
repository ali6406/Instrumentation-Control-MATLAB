clear, clc
%Name : Ali Zahid 
%Roll no: ME-21072
%I&C Lab 5

%Natural frequency
wn = 1;
%Different observation values
zeta_values = [0.1, 0.4, 0.7, 1.0, 2.0];

%Iterate over zeta_values for their respective curve plotting 
for i = 1:length(zeta_values)
    zeta = zeta_values(i);
    num = wn^2;
    den = [1 2*zeta*wn wn^2];
    step(num, den);
    hold on;
    
    sys = tf(num, den);
    step_info = stepinfo(sys);
    
    %Calculate steady-state value
    [mag, ~] = bode(sys, 0);  % Magnitude at omega = 0
    steady_state_value = mag * 1;  % Step input
    
    %Displaying the performance metrics
    fprintf('For zeta = %.1f:\n', zeta);
    fprintf('Rise Time: %.4f\n', step_info.RiseTime);
    fprintf('Peak Time: %.4f\n', step_info.PeakTime);
    fprintf('Overshoot: %.4f%%\n', step_info.Overshoot);
    fprintf('Settling Time: %.4f\n', step_info.SettlingTime);
    fprintf('Steady State Value: %.4f\n\n', steady_state_value);
end

%For calculated time constant
Ra = 2e3; Rb = 2.5e3;  % ohm
Ca = 0.01; Cb = 0.003; % F
fprintf('a) For R=%.0f Kohm and C=%.2f F:\n', Ra/1e3, Ca);
fprintf('Time Constant: %.2f seconds\n', Ra * Ca);
fprintf('b) For R=%.0f Kohm and C=%.3f F:\n', Rb/1e3, Cb);
fprintf('Time Constant: %.2f seconds\n', Rb * Cb);
