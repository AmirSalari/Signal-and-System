% Read in a different format
[d2,sr] = audioread('AHardDayNight.mp3');
subplot(312)
specgram(d2(:,1),1024,sr);