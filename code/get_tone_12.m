function y = get_tone_12(tone,rythm,upordown,length_beat,CorF,amp)
%1 = F 2/4
    %抽样频率
    fs = 8000;
    %节拍
    beat=length_beat;
    %序列
    t = 0:1/fs:rythm*beat; 
    %音调C或F大调
    if CorF==1
        freqs=[261.63,293.66,329.63,349.23,392,440,493.88];
    else
        freqs=[349.23,392,440,493.88,523.25,587.33,659.25];
    end
    freqs=freqs.*(2^upordown);
    
    %正弦序列
    if tone==0
        t(t>0)=0;
        y=t;
    else
        y = sin(2*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
        for idx=2:length(amp)
            y = y+ amp(idx)*sin(2*idx*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
        end
    end
end
