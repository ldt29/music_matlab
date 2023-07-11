clear;clc;

load("attachments/guitar.mat");
fs=8000;
T=1/fs;
N=243;
t= (0:N-1)*T;

figure;
plot(t,realwave,'b-');
xlabel('t(8kHz Sampled)')
ylabel('realwave')

figure;
plot(t,wave2proc,'r-');
xlabel('t(8kHz Sampled)')
ylabel('wave2proc')
t_up=0:1/fs/10:0.03+9/fs/10;

prewave=interp1(t,realwave',t_up);

A = reshape(prewave,241,10).';
p = mean(A);
resampled_wave2proc = repmat(p.',10,1);

my_wave=interp1(t_up,resampled_wave2proc,t)';

figure;
plot(t,my_wave,'g-');
xlabel('t(8kHz Sampled)')
ylabel('mywave')