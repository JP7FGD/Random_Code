function filter = generatefilter(type,frequency1,frequecy2,Rate)

if type == 0
    filter = designfilt('bandpassiir','FilterOrder',20, ...
    'HalfPowerFrequency1',frequency1,'HalfPowerFrequency2',frequecy2, ...
    'SampleRate',Rate);
else
    filter = designfilt('bandstopiir','FilterOrder',20, ...
    'HalfPowerFrequency1',frequency1,'HalfPowerFrequency2',frequency2, ...
    'DesignMethod','butter','SampleRate',Rate);
end
end