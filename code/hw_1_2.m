clear,clc;

fs = 8000;

%%%%%% dongfanghong %%%%%%

part_1=[get_tone_2(5,0.5,0),get_tone_2(5,0.25,0),get_tone_2(6,0.25,0)];
part_2=get_tone_2(2,1,0);
part_3=[get_tone_2(1,0.5,0),get_tone_2(1,0.25,0),get_tone_2(6,0.25,-1)];

dongfanghong=[part_1,part_2,part_3,part_2];

plot(0:1/fs:4+7/fs,dongfanghong);
xlabel('t(s)')
ylabel('dongfanghong')

sound(dongfanghong,fs);