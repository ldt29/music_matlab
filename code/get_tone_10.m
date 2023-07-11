function y = get_tone_10(tone,rythm,upordown)
%1 = F 2/4
    %抽样频率
    fs = 8000;
    %节拍
    
    %序列
     t = 0:1/fs:rythm; 
    %音调F大调
    freqs=[349.23,392,440,493.88,523.25,587.33,659.25];
    freqs=freqs.*(2^upordown);
    %幅度
    load('hw_1_8_saved.mat');
    amp = ampandfreq(1,:);
    %正弦序列
    y = sin(2*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
    y = y+ amp(2)*sin(4*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
    y = y+ amp(3)*sin(6*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
    y=  y+ amp(4)*sin(8*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
end

