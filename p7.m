clear,clc
% Task#1
numg = [1 0]; deng = [0 1]; sysg = tf(numg,deng);
numh = [1 0]; denh = [0 1]; sysh = tf(numh,denh);
sys = series(sysg,sysh);
numc = [0 1]; denc = [1 0]; sys2 = tf(numc,denc);
sys3 = parallel(sys,sys2);
sys4 = feedback(sys3,[1]);
sys5 = series(sys4,sys2);
sys6 = feedback(sys5,sysg);
fprintf("The transfer function of the given block diagram in task#1 is: \n")
sys6

% Task#2
numa = [0 1]; dena = [1 0 0]; sys1 = tf(numa,dena);
numb = [0 50]; denb = [1 1]; sys2 = tf(numb,denb);
numc = [0 2]; denc = [1 0]; sys3 = tf(numc,denc);
sys4 = feedback(sys2,sys3);
sys5 = series(sys1,sys4);
numd = [1 0]; dend = [0 1]; sys6 = tf(numd,dend);
nume = [0 -2]; dene = [0 1]; sys7 = tf(nume,dene);
sys8 = parallel(sys6,sys7);
sys9 = series(sys8,sys5);
sys10 = feedback(sys9,[1]);
fprintf("The transfer function of the given block diagram in task#2 is: \n")
sys10
