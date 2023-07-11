clear;clc;

load("attachments/guitar.mat");

fs=8000;
T=1/fs;
N=243;
t= (0:N-1)*T;
figure;
fft0=fft(wave2proc);
P2=abs(fft0/N);
P1=P2(1:(N+1)/2);
f1=fs*(0:(N/2))/N;
plot(f1,P1);
xlabel('f1(Hz)')
ylabel('|P1(f)|')

%延拓
extend_wave=wave2proc;
for idx=1:9
    extend_wave=[extend_wave;wave2proc];
end
N_e=N*10;
figure;
fft1=fft(extend_wave);
P3=abs(fft1/N_e);
P4=P3(1:N_e/2+1);
f2=fs*(0:(N_e/2))/N_e;
plot(f2,P4);
xlabel('f2(Hz)')
ylabel('|P4(f)|')

freq_arg=find(P4>max(P4)/2)';
freqs=f2(freq_arg);
amps=P4(freq_arg);
amp_s=amps/amps(1);
disp(freqs(1));

ampandfreq = [amp_s';freqs];
