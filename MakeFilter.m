%Make Filter for signal with noise.
%Originally made to remove the effect of power line humming.
%Sujoy   Created 2017/10
%Plan implement as function

dbp = designfilt('bandpassiir','FilterOrder',20, ...
    'HalfPowerFrequency1',80,'HalfPowerFrequency2',220, ...
    'SampleRate',Fs);

%dbs = designfilt('bandstopiir','FilterOrder',20, ...
%    'CutoffFrequency1',149,'CutoffFrequency2',151, ...
%    'SampleRate',Fs);

dbs = designfilt('bandstopiir','FilterOrder',20, ...
               'HalfPowerFrequency1',149,'HalfPowerFrequency2',151, ...
               'DesignMethod','butter','SampleRate',Fs);
           
%fvtool(d,'Fs',Fs)