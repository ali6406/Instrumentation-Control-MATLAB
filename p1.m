clc , clear
%Name : Ali Zahid 
%Roll no: ME-21072
%I&C Lab 1

%Exercise: 1
%Polynomials
p = [1 2 1] , q = [1 1]

disp("a. p(s )*q(s)")
conv(p,q)

disp("b. Roots of p(s) and q(s)")
ps = roots(p) , qs = roots(q)

disp("c. p(-1) and q(6)")
p_neg_1 = polyval(p,-1)
q_6 = polyval(q,6)

%Exercise: 2
%Polynomials
B = [2 5 3 6] , A = [1 6 11 6]
disp("Partial fraction")
[r,p,k] = residue(B,A)







