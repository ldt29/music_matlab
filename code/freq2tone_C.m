function tones=freq2tone_C(freqs)
    freq_s=[261.63,293.66,329.63,349.23,392,440,493.88];
    freq_down=freq_s/2;
    freq_up=freq_s*2;
    freq_all=[freq_down,freq_s,freq_up];
    tones=[];
    for idx=1:length(freqs)
        temp = freqs(idx);
        for idy =2:length(freq_all)
            if temp<=freq_all(idy) && temp>freq_all(idy-1)
                if(temp-freq_all(idy-1)<freq_all(idy)-temp)
                    if(idy-1<8)
                        tones = [tones,-(idy-1)];
                    else
                        tones=[tones,idy-8];
                    end                    
                else
                     if(idy <8)
                        tones = [tones,-idy];
                    else
                        tones=[tones,idy-7];
                     end  
                end
            end
        end
    end
    
end