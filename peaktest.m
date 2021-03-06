%Find peaks f a signal

close all;
Frequency = 100e3;%kHz
RawPData = csvread('60off.csv');
MaxT = length(RawPData)/Frequency;
TimeLine = 0:1/Frequency:MaxT-(1/Frequency);

%[Peaks,TimeStamps] = findpeaks(RawPData,TimeLine,'MinPeakDistance',0.005,'MinPeakHeight',0.2);
[Peaks,TimeStamps] = findpeaks(bsP,TimeLine,'MinPeakDistance',0.0045);

%B = Peaks>0.02;
%n = nnz(B);


