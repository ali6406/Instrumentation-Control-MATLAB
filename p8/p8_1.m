clear,clc
%Task#1
k = 0:0.5:5; n = length(k);
%Creating matrices to store poles & stability info
p = zeros(3, n);  %The system is of third-order
stability = strings(1, n);
for i = 1:n
    num = [1]; den = [1 5 k(i)-3 k(i)];
    transfer_f_open = tf(num, den);
    transfer_f_close = feedback(transfer_f_open, [1]);
    poles = pole(transfer_f_close);
    fprintf('Poles for k = %.1f:\n', k(i))
    fprintf('%.3f\n', poles)
    p(:, i) = poles;
    %Determine the stability based on pole locations
    if all(real(poles) < 0)
        stability(i) = "Stable";
    elseif any(real(poles) > 0)
        stability(i) = "Unstable";
    elseif all(real(poles) == 0) && all(imag(poles) ~= 0)
        stability(i) = "Marginally Stable";
    else
        stability(i) = "Unstable";
    end
end
disp(table(k', stability', 'VariableNames', {'K', 'Stability'}));
%Step response
K_values = [0, 2, 3.75, 4, 5];
figure;
%Loop through each K value and plot the step response in a subplot
for i = 1:length(K_values)
    num = [1]; den = [1 5 K_values(i)-3 K_values(i)];
    transfer_f_open = tf(num, den);
    transfer_f_close = feedback(transfer_f_open, [1]);    
    subplot(5, 1, i);
    step(transfer_f_close);    
    title(sprintf('Step response for K = %.2f', K_values(i)));
end
