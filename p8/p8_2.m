clear,clc
%Task#2
k = [1, 14/3, 5];
figure;
for i = 1:length(k)
    num = [k(i) k(i)*30 k(i)*200];
    den = [1 2+k(i) 30*k(i) 200*k(i)];
    transfer_f = tf(num, den); 
    subplot(length(k), 1, i);
    step(transfer_f);
    title(['Step Response for K = ', num2str(k(i))]);
end

