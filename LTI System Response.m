clc;
clear all;
close all;
% numerator=[1 -2 1];
% denominator=[1 6 11 6];
numerator=[1 0.65 0.8 -0.55];
denominator=1;
N=10;
n=0:N;
imp=[1 zeros(1,N)];
h=filter(numerator, denominator, imp);
disp('imulse response of LTI system is');
disp(h);
figure;
stem(n,h)
title('impulse response of LTI system');
 
% unit step response of LTI system
numerator=[1 -2.4 2.88];
denominator=[1 -0.8 0.64];
N=10;
n=0:1:N-1;
u=ones(1,N);
s=filter(numerator, denominator, u);
disp('step response of LTI system is');
disp(s);
figure;
stem(n,s)
title('step response of LTI system');
