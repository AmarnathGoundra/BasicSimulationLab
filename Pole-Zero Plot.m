clc;
clear all;
close all;
numerator=[1 -2.1 0.2];
denominator=[1 -0.25 -0.125 0];
% numerator=[1 1 0];
% denominator=[1 -3 2];
% numerator=input('Enter numerator')
% denominator=input('Enter denominator')
H=tf(numerator, denominator);
[p,z]=pzmap(H);
 
disp('Zeros are at')
disp(z);
disp('Poles are at')
disp(p);
figure;
%pzmap(H);
zplane(z,p)
 
if max(real(p))>1
     disp('Poles are not inside of unit circle, system is unstable')
 else 
disp('Poles are inside of unit circle, system is stable')
 end
using  Laplace Transforms:

%Plotting the pole zero map in s-plane and checking the stability of system
clc;
clear all;
close all;
syms s
num=[1 -2 1];
den=[1 6 11 6];
disp('zeros of the given LT are')
zeros=roots(num)
disp('poles of the given LT are')
poles=roots(den)
H=tf(num,den);
[p,z]=pzmap(H);
disp('The taken LT is')
H=tf(num,den)
pzmap(H)

figure;
t=0:0.1:10;
h=impulse(H,t);
plot(t,h);
disp(h);
xlabel('t');
ylabel('h');
title('impulse response'); 
 
%Checking stability of system
[r,p,k]=residue(num,den);
disp('pfe coefficient');
disp(r);
if max(real(p))>=0
disp('poles are not in LHS,so the system is unstable');
else
disp('poles are in LHS, so the system is stable');
end
