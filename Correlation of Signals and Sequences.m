% Correlation of two signals
clc
clear all
close all

t=-2*pi:0.01:2*pi;
x1=3*sin(2*pi*1.5*t);
y=xcorr(x1,x1);
subplot(2,1,1),plot(y);
xlabel('t'),ylabel('y(t)'),title('Auto-Correlation of x1');

t1=0:0.05:7;
x2=2*sin(2*pi*0.5*t);
y1=xcorr(x1,x2);
subplot(2,1,2),plot(y1);
xlabel('t'),ylabel('y(t)'),title('Cross-Correlation of x1 and x2');


% Correlation of two discrete time sequences

clc;
close all;
clear all;
 
t=0:1:3;
x1=[1 2 3 4];
x2=[2 1 2 1];
 
[r,lag]=xcorr(x1,x2);
subplot(3,1,1);
stem(t,x1);
xlabel('t'),ylabel('x1'),title('first signal');
 
subplot(3,1,2);
stem(t,x2);
xlabel('t');
ylabel('x2');
title('second signal');
 
n3=length(r);
n=0:1:n3-1
subplot(3,1,3);
stem(n,r);
xlabel('n');
ylabel('r(n)');
title('cross correlated signal');
