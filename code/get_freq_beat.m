function [freqs,beats] = get_freq_beat(demo)
    freqs = [];
    beats = [];
    batchs = [];
    slices=[];
    min_step = 0.31;
    % 四分之一拍
    min_gap = 19;
    batch_N = 100;
    pre_slice=-100;
    batch_len=int32(length(demo)/batch_N-1);
    for idx=1:batch_len
        batchs=[batchs;demo(idx*batch_N-batch_N+1:idx*batch_N)];
    end
    for idx=1:batch_len
        if max(batchs(idx,:))-min(batchs(idx,:))>min_step
            if(idx-pre_slice>min_gap)
                slices=[slices,idx];
                pre_slice=idx;
            end
        end
        
    end
    slices=[slices,batch_len];
    
    for idx= 1:length(slices)-1
        temp=demo(slices(idx)*batch_N+batch_N:int32((slices(idx)+slices(idx+1))*batch_N/2));
        freqs=[freqs,get_baseband(temp)];
        if slices(idx+1)-slices(idx)<25
            beats=[beats,0.5];
        else
            if slices(idx+1)-slices(idx)<45
                beats=[beats,1];
            else
                if slices(idx+1)-slices(idx)<85
                    beats=[beats,2];
                else
                    if slices(idx+1)-slices(idx)<125
                            beats=[beats,3];
                    else
                            beats=[beats,4];
                    end
                end
            end
        end
    end
    
    
end

