function fourier = get_fourier(demo)
    fs=8000;
    T=1/fs;
    temp=demo;
    N=length(demo);
    fft0=fft(demo);
    P2=abs(fft0/N);
    P1=P2(1:int32(N/2));
    f1=fs*(0:N/2)/N;
    freq_arg=find(P1>max(P1)/6)';
    freqs=f1(freq_arg);
    amp=P1(freq_arg);
    amps=amp/amp(1);
    fourier=[amps';freqs];
end
