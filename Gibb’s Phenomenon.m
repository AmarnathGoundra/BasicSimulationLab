clc;
close all;
clear all;
N=input('type total number of harmonics');
t=0:0.001:1;
y=square(2*pi*t);
plot(t,y,'r','linewidth',2);
axis([0 1 -1.5 1.5]);
hold;
sq=zeros(size(t));
for n=1:2:N
sq=sq+4/(pi*n)*sin(2*pi*n*t);
end;
plot(t,sq);
grid;
xlabel('t');
ylabel('sq(t)');
title('synthesized square wave');

%%Method 2

clc;
clear all;
close all;
t=0:0.0005:2*pi;
x1=(4/(pi))*sin(t);
x2=(4/(3*pi))*sin(3*t);
x3=(4/(5*pi))*sin(5*t);
x4=(4/(7*pi))*sin(7*t);

subplot(2,2,1), plot(x1),xlabel('time'),ylabel('f(t)'),grid on;
subplot(2,2,2), plot(x1+x2),xlabel('time'),ylabel('f(t)'),grid on;
subplot(2,2,3), plot(x1+x2+x3),xlabel('time'),ylabel('f(t)'),grid on;
subplot(2,2,4), plot(x1+x2+x3+x4),xlabel('time'),ylabel('f(t)'),grid on;
xlabel('time'),ylabel('f(t)'),title('Approximation of Rect using Sine');
grid on
