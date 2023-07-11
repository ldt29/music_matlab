clear,clc;

fs = 8000;

%%%%%% test %%%%%%
% sound(get_tone(5,1,0));
% sound(get_tone(6,1,0));
% sound(get_tone(6,1,-1));
% sound(get_tone(2,1,0));
% sound(get_tone(1,1,0));

%%%%%% dongfanghong %%%%%%

part_1=[get_tone_1(5,0.5,0),get_tone_1(5,0.25,0),get_tone_1(6,0.25,0)];
part_2=get_tone_1(2,1,0);
part_3=[get_tone_1(1,0.5,0),get_tone_1(1,0.25,0),get_tone_1(6,0.25,-1)];
% sound(part_1,fs);
% sound(part_2,fs);
% sound(part_3,fs);

dongfanghong=[part_1,part_2,part_3,part_2];

plot(0:1/fs:4+7/fs,dongfanghong);
xlabel('t(s)')
ylabel('dongfanghong')

sound(dongfanghong,fs);

