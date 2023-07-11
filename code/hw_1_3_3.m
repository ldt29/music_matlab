clear,clc;

fs = 8000;

%%%%%% dongfanghong %%%%%%

part_1=[get_tone_3(5,0.5,0),get_tone_3(5,0.25,0),get_tone_3(6,0.25,0)];
part_2=get_tone_3(2,1,0);
part_3=[get_tone_3(1,0.5,0),get_tone_3(1,0.25,0),get_tone_3(6,0.25,-1)];

dongfanghong=[part_1,part_2,part_3,part_2];

% 升高半个音阶
fs_up=fs/2^(1/12);
dongfanghong_up=interp1(0:1/fs:4+7/fs,dongfanghong,0:1/fs_up:4);

plot(0:1/fs:4+7/fs,dongfanghong);
xlabel('t(s)')
ylabel('dongfanghong')

sound(dongfanghong_up,fs);

