function y = get_tone_11(tone,rythm,upordown)
%1 = F 2/4
    %抽样频率
    fs = 8000;
    %节拍
    
    %序列
     t = 0:1/fs:rythm/2; 
    %音调F大调
    freqs=[349.23,392,440,493.88,523.25,587.33,659.25];
    freqs=freqs.*(2^upordown);
    %幅度
    load('data/hw_1_8_saved.mat');
    % 谐波
    amp=[1,0.22,0,0,0,0];
    if tone == 6 && upordown==-1
        amp=[1 ,0.9, 0.25, 0, 0, 0.2];
    else
        if tone == 1 && upordown==0
            amp = [1, 0.2, 0.1, 0.1, 0, 0];
        else
            if tone ==2 && upordown ==0
                amp = [1, 0.22, 0, 0, 0, 0];
            else
                if  tone == 7 && upordown==-1
                    amp=[1 ,1.5, 1.1,1, 0, 0]/4;
                else
                    if tone == 5 && upordown==-1
                        amp=[1 ,0.6, 0, 0, 0, 0];
                    end
                end
            end
        end
    end
    %正弦序列
    if tone==0
        t(t>0)=0;
        y=t;
    else
        y = sin(2*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
        for idx=2:6
            y = y+ amp(idx)*sin(2*idx*pi*freqs(tone)*t).*(t/rythm).*exp(-10*t./rythm);
        end
    end
end

