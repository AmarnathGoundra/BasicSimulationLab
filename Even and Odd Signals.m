clc;
clear all;
close all;
t=-20:0.01:20;
u=0.5*sign(t)+0.5;
x1=exp(-1.5*t).*u;
subplot(221),plot(t,x1);
x2=fliplr(x1);
subplot(223),plot(t,x2);
xe=0.5*(x1+x2);
subplot(222),plot(t,xe);
xo=0.5*(x1-x2);
subplot(224),plot(t,xo);
figure;
%Unit Step
n=-15:1:15;
y1=[zeros(1,15),ones(1,10),zeros(1,6)];
y2=fliplr(y1);
ye=0.5*(y1+y2);
yo=0.5*(y1-y2);
subplot(221),stem(n,y1);grid on
subplot(223),stem(n,y2);
subplot(222),stem(n,ye);
 
subplot(224),stem(n,yo);
%triangular
figure;
t=-1:.05:1
u=0.5*sign(t)+0.5;
x=(1-t).*u;
y=fliplr(x)
xe=0.5*(x+y);
xo=0.5*(x-y);
subplot(221),stem(t,x);grid on
subplot(223),stem(t,y);grid on
subplot(222),stem(t,xe);grid on
subplot(224),stem(t,xo);grid on
