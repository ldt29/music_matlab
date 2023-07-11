function y = get_tone_3(tone,rythm,upordown)
%1 = F 2/4
    %抽样频率
    fs = 8000;
   
    %序列
    t = 0:1/fs:rythm; 
    %音调
    freqs=[349.23,392,440,493.88,523.25,587.33,659.25];
    freqs=freqs.*(2^upordown);
    %正弦序列
    y = sin(2*pi*freqs(tone)*t).*(t/rythm).*exp(-7.*t./rythm);
end

