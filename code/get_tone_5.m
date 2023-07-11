function y = get_tone_5(tone,rythm,upordown)
%1 = F 2/4
    %抽样频率
    fs = 8000;
    %节拍
    beat = 60/87;
    %序列
    t = 0:1/fs:rythm*beat; 
    %音调降A大调
    freqs=[207.65,233.08,261.63,277.18,311.13,349.23,392];
    freqs=freqs.*(2^upordown);
    %正弦序列
    y = sin(2*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
    y = y+ 0.2*sin(4*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
    y = y+ 0.3*sin(6*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
end

