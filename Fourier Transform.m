% Fourier Transform of a function f(t) = exp(-2*t)u(t)
clc;
clear all;
close all;
syms t w;
 
f = exp(-2*t).*heaviside(t);
F = fourier(f)
magF = abs(F);                 % absolute value
angleF = atan(imag(F)/real(F));%atan is inverse of tan
 
%Plotting the function f(t) = exp(-2*t)u(t)
subplot(3,1,1);
ezplot(f);          %plot of a function from -2pi to +2pi
title('input signal');
xlabel('t');
ylabel('x(t)'); 
% magnitude spectrum
subplot(3,1,2);
ezplot(magF);
title(' Magnitude Spectrum');
xlabel('w');
ylabel('|F(w)|'); 
% Phase spectrum
subplot(3,1,3);
ezplot(angleF);
title(' Phase Spectrum');
xlabel('w');
ylabel('PHI(w)');

 
%% method2
clc;
clear all;
close all;
syms t
 
a = exp(-2*t).*heaviside(t);
b= t.*exp(-2*t).*heaviside(t);
c=dirac(t);
d=heaviside(t);
 
 
A=fourier(a)
B=fourier(b)
C=fourier(c)
D=fourier(d)



Using FFT
clc;
clear all;
close all;
t=-5:0.01:5
f=cos(2*pi*5*t);
F=fft(f);
 
magF=abs(F);
angleF=phase(F);
IFT=ifft(F);
 
subplot(2,2,1);
plot(t,f);
title('input signal')
axis([-1 1 -2 2]);
grid;
 
subplot(2,2,2);
plot(t,magF);
title('Magnitude Spectrum')
grid;
 
subplot(2,2,3);
plot(t,angleF);
title('Phase Spectrum')
axis([-7 7 -5 5]);
grid;
 
subplot(2,2,4);
plot(t,IFT);
title('Inverse Fourier Transform')
grid;
axis([-1 1 -2 2]);
