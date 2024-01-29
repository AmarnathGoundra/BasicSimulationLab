clc;
clear all;
close all; 
x1=input('Enter the first sequence x1(n) = ');
t1=input('Enter the starting time of first sequence t1 = ');
x2=input('Enter the second sequence x2(n) = ');
t2=input('Enter the starting time of second sequence t2 = ');
 
l1=length(x1);
a=t1+l1-1;
n1=t1:a;
subplot(311);
stem(n1,x1);
xlabel('time--->');
ylabel('amplitude--->');
title('First sequence');
 
 
l2=length(x2);
b=t2+l2-1;
n2=t2:b;
subplot(312);
stem(n2,x2);
xlabel('time--->');
ylabel('amplitude--->');
title('Second sequence');
 


y=conv(x1,x2);
t=t1+t2;
c=a+b;
n=t:c;
subplot(313);
stem(n,y);
 
xlabel('time--->');
ylabel('amplitude--->');
title('Convolved output');

%%Method 2

n1=0:1:3;
%x=[1 2 3 4];
%n1=length(x);
x=input('enter the first sequence');
subplot(2,2,1),stem(n1,x); grid on;
n2=0:1:3;
%y=[2 1 2 1];
%n2=length(y);
y=input('enter the second sequence');
subplot(2,2,2),stem(n2,y);grid on;
z=conv(x,y);
 n=length(z);
t=0:1:n-1;
%n=length(x)+length(y)-1;
subplot(2,2,3), stem(t,z);grid on;
disp('the convolution of x and y is= ')
disp(z);
%% Convolution of Continuous time Signals
clc;
close all;
clear all;
 
t=0:0.1:3;
x1=t/3.*(t>=0&t<=3);
t1=-1:0.1:1;
x2=(1.*(t1>=-1&t1<=1));
x3=conv(x1,x2);
subplot(3,1,1);
stem(t,x1);
xlabel('t');
ylabel('x1');
title('first signal');
subplot(3,1,2);
stem(t1,x2);
xlabel('t');
ylabel('x2');
title('second signal');
n3=length(x3);
subplot(3,1,3);
 
stem(x3)
xlabel('t1');
ylabel('x3');
title('convolved signal');

