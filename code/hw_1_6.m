clear;clc;

fs=8000;
T=1/fs;


load("attachments/guitar.mat");

fmt=audioread("attachments/fmt.wav");

N = length(fmt);
t= (0:N-1)*T;

plot(t,fmt);
xlabel('t（s）')
ylabel('fmt.mav')

sound(fmt);