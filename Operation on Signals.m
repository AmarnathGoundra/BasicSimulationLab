% Generation of sinusoidal signal
t=-2*pi:0.001:2*pi;
x=sin(2*pi*.5*t);
subplot(3,2,1),plot(t,x);
axis([-7,7,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('original sinusoidal');
grid on;
a=t+2*pi; 
%Time Delay
%a=-t;
subplot(3,2,3),plot(a,x); 
axis([-7,7,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('Time delayed sinusoidal');grid on;

b=t-(2*pi);
subplot(3,2,5),plot(b,x);
axis([-7,7,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('Advanced sinusoidal');grid on;
c=2*t; e=-t;
subplot(3,2,2),plot(e,x);
axis([-7,7,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('time reversed sinusoidal'); grid on;
subplot(3,2,4),plot(c,x);
axis([-12.5,12.5,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('time expansion');grid on;
d=t/2;
subplot(3,2,6),plot(d,x);
axis([-3.5,3.5,-1.5 1.5]);
xlabel('time......>'),ylabel('sin(t)'),title('time compresion');grid on;
 
 % Addition, Subtraction, Multiplication
clc;
close all;
clear all;
 
t=-3:0.01:3;
x1=(1.0).*(t>=0&t<=2);
x2=(1.0).*(t>=0.5&t<=1.5);
y1=x1+x2;
y2=x1-x2;
y3=x1.*x2;
 
subplot(3,2,1);
plot(t,x1);
axis([-3 3 0 3]);
xlabel('t');
ylabel('x1(t)');
title('signal x1');
grid;
 
subplot(3,2,3);
plot(t,x2);
axis([-3 3 0 3]);
xlabel('t');
ylabel('x2(t)');
title('signal x2');
grid;
 
subplot(3,2,2);
plot(t,y1);
axis([-3 3 0 3]);
xlabel('t');
ylabel('y1(t)');
title('addition of x1 and x2');
grid;
 
subplot(3,2,4);
plot(t,y2);
axis([-3 3 0 3]);
xlabel('t');
ylabel('y2(x)');
title('subtraction of x1 and x2');
grid;
 
subplot(3,2,6);
plot(t,y3);
axis([-3 3 0 3]);
xlabel('t');
ylabel('y3(x)');
title('multiplication of x1 and x2');
grid:

% Energy and Power of the Discrete Time  Sequence
clc
clear all
close all
n=-5:5;
x=((-0.5).^n);
y=abs(x)
energy=sum(y.^2)
power=(sum(y.^2))/length(n)
