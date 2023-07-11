clear,clc;

fs = 8000;

%%%%%% dongfanghong %%%%%%

% 降八度
part_1=[get_tone_3(5,0.5,-1),get_tone_3(5,0.25,-1),get_tone_3(6,0.25,-1)];
part_2=get_tone_3(2,1,-1);
part_3=[get_tone_3(1,0.5,-1),get_tone_3(1,0.25,-1),get_tone_3(6,0.25,-2)];


dongfanghong=[part_1,part_2,part_3,part_2];

plot(0:1/fs:4+7/fs,dongfanghong);
xlabel('t(s)')
ylabel('dongfanghong')

sound(dongfanghong,fs);

