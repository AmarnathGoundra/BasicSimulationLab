%% Linearity%
clc;
close all;
clear all;
%y(t)=x(t)cos(2*pi*100*t);
%x(t)=0.4cos(2*pi*10*t);
t=-0.1:0.001:0.1;
x=0.4.*cos(2*pi*10*t);
y=x.*cos(1*pi*100*t);
x1=0.2*cos(2*pi*5*t);
x2=0.6*cos(2*pi*8*t);
a1=2;
a2=3;
y1=x1.*cos(2*pi*100*t);
y2=x2.*cos(2*pi*100*t);
y3=a1*y1+a2*y2;
x3=a1*x1+a2*x2;
y4=x3.*cos(2*pi*100*t);
if(round(y3)==round(y4));
    disp('linear');
else;
    disp('non linear');
end;
figure();
subplot(2,1,1);
plot(t,y3);
grid;
xlabel('t');
ylabel('y3');
subplot(2,1,2);
plot(t,y4);
grid;
xlabel('t');
ylabel('y4');

% time invariance of a given system y(t)=t.cosx(t) 
 
clc;
close all;
clear all;
t=-1:0.01:1;
x=(2*t)+3*t.^2;
k=2;
xtmk=(2*(t-k))+3*(t-k).^2;
ytck=t.*cos(xtmk);%response to delayed input
ytmk=(t-k).*cos(xtmk);%delayed response
if(round(ytck)==round(ytmk))
    disp('time invariant');
else
    disp('time variant');
end
figure;
subplot(2,1,1);
plot(t,ytck);
xlabel('t');
ylabel('y(t,k)');
title('response to delayed input');
subplot(2,1,2);
plot(t,ytmk);
xlabel('t');
ylabel('y(t-k)');
title('delayed response');
