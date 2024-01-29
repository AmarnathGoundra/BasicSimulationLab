clc;
close all;
clear all;
 % Generation of Continuous Time Sinusoidal Signal
t=0:0.01:0.6;
p=sin(2*pi*5*t);
subplot(2,2,1);
plot(t,p);
grid;
axis([0,0.6,-1.5,1.5]);
xlabel('time');
ylabel('amplitude');
title('sinusoidal wave');

 % Generation of Continuous Time Square Signal

q=square(2*pi*5*t);
subplot(2,2,2);
plot(t,q);
grid;
axis([0,0.6,-1.5,1.5]);
xlabel('time');
ylabel('amplitude');
title('square wave');
 





% Generation of Continuous Time Sawtooth Signal

r=sawtooth(2*pi*5*t);
subplot(2,2,3);
plot(t,r);
grid;
axis([0,0.6,-1.5,1.5]);
xlabel('time');
ylabel('amplitude');
title('sawtooth wave');

% Generation of Continuous Time Triangular Signal 
s=sawtooth(2*pi*5*t,0.5);
subplot(2,2,4);
plot(t,s);
grid;
axis([0,0.6,-1.5,1.5]);
xlabel('time');
ylabel('amplitude');
title('triangular wave');

% Generation of Continuous Time ramp Signal											
n=0:10;
x=n;figure(2);
subplot(2,2,1),plot(n,x);grid on;
xlabel('n'),ylabel('x(n)');
title('ramp sequence');

% Generation of Continuous Time unit step Signal
 
y=[ones(1,11)];
subplot(2,2,2),plot(n,y);grid on;
xlabel('n'),ylabel('y(n)');
title('unit step  sequence');






% Generation of Continuous Time unit impulse Signal

n1=-5:5;
z=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(2,2,3),plot(n1,z);grid on;
xlabel('n'),ylabel('z(n)');
title('unit impulse sequence'); 
% Generation of Continuous Time exponential Signal

n2=0:0.05:5;
w=exp(-2*n2);
subplot(2,2,4),plot(n2,w);grid on;
xlabel('n'),ylabel('w(n)');
title('Exponential  sequence');

% Generation of Discrete Time unit impulse Sequence

clc;
close all;
clear all;
t1=-5:1:5;
y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(2,2,1);
stem(t1,y1);
grid;
xlabel('t.....>');
ylabel('amplitude');
title('unit impulse sequence');


% Generation of Discrete Time unit step Sequence
 
disp('unit step sequence');
n1=input('enter length of unit step');
t2=0:1:n1-1;
y2=ones(1,n1);
subplot(2,2,2);
stem(t2,y2);
grid;
xlabel('t');
ylabel('amplitude');
title('unit step sequence');

% Generation of Discrete Time ramp Sequence
 
disp('unit ramp sequence');
n2=input('enter the length of unit ramp');
t3=0:1:n2-1;
y3=t3;
subplot(2,2,3);
stem(t3,y3);
grid;
xlabel('t');
ylabel('amplitude');
title('unit ramp sequence');

% Generation of Discrete Time unit exponential Sequence
 
disp('unit exponential sequence');
n3=input('enter the length of unit exponential sequence');
a=input('enter the value of a');
t4=0:1:n3-1;
y4=exp(-a*t4);
subplot(2,2,4);
stem(t4,y4);
grid;
xlabel('t');
ylabel('amplitude');
title('unit exponential sequence');
