clear;clc;

fs=8000;
T=1/fs;
fmt=audioread("attachments/fmt.wav");
N = length(fmt);
t= (0:N-1)*T;

[freqs,beats]=get_freq_beat(fmt');

tones = freq2tone_C(freqs);


tonesandbeats = [tones;beats];

% 分析音调
% 246.94
temp_B = fmt(125000:125100);
fourier_B=get_fourier(temp_B);
% 1--1+0.8+2.7 2--1
% 1 0.22

%207.65
%1--1+0.4 2--0.3 3--0.8]
%1 0.22 0.57

% 220
temp_A = fmt(79500:79600);
for idx=1:4;
    temp_A=[temp_A;temp_A];
end
fourier_A=get_fourier(temp_A);
% 1--1+3.5 2--1.4 3--0.95

% 349.23
%1 0.2 0.1 0.1

% 261.23
% 1--2.2 2--1.3

% 293.66
% 1 ,0.9, 0.25, 0, 0, 0.2

% 329.63
% 1--1 2--1.5 3--1 4--1.1

% 392
% 1--3.7 2--0.85
% 1 0.22