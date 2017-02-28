function parameters = getParameters()
modelName = 'targetModel/';

parameters.phiSPAmplitude = str2double(get_param([modelName, 'phiAmplitude'],'Value'));
parameters.phiSPFrequency = get_param([modelName, 'phiFrequency'],'Value');
if isa(parameters.phiSPFrequency,'char')
    parameters.phiSPFrequency = eval(parameters.phiSPFrequency);
end

parameters.phiSPPeriod    = 1/parameters.phiSPFrequency;


parameters.altSP   = str2double(get_param([modelName, 'zDes'],'Value'));
parameters.thetaSP = str2double(get_param([modelName, 'thetaDes'],'Value'));

parameters.tauAlt = str2double(get_param([modelName, 'tauAltitude'],'Value'));
parameters.kdAlt  = str2double(get_param([modelName, 'kdAltitude'] ,'Gain'));
parameters.kpAlt  = str2double(get_param([modelName, 'kpAltitude'] ,'Gain'));


parameters.tauTheta = str2double(get_param([modelName, 'tauPitch'],'Value'));
parameters.kdTheta  = str2double(get_param([modelName, 'kdPitch'] ,'Gain'));
parameters.kpTheta  = str2double(get_param([modelName, 'kpPitch'] ,'Gain'));

parameters.tauPhi = str2double(get_param([modelName, 'tauRoll'],'Value'));
parameters.kdPhi  = str2double(get_param([modelName, 'kdRoll'] ,'Gain'));
parameters.kpPh   = str2double(get_param([modelName, 'kpRoll'] ,'Gain'));


end