function music = soundmusic(tone,rythm,upordown,beat,CorF,amp)
%SOUNDMUSIC 此处显示有关此函数的摘要
%   此处显示详细说明
    music=[];
    if length(tone)==length(upordown)
        if length(tone)==length(rythm)
            for idx = 1: length(tone)
                music=[music,get_tone_12(tone(idx),rythm(idx),upordown(idx),beat,CorF,amp)];
            end
            fs = 8000;
            sound(music,fs);
        else
            disp('Error input!!!');
        end
    else
        disp('Error input!!!');
    end
    
    
    
end

