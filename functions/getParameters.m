function parameters = getParameters()
modelName = 'dxpcImMultiTarget_singleimage_CV_euler_finBETA/';

parameters.phiSPAmplitude = str2double(get_param([modelName, 'phi_amplitude'],'Value'));
parameters.phiSPFrequency = get_param([modelName, 'phi_frequency'],'Value');
if isa(parameters.phiSPFrequency,'char')
    parameters.phiSPFrequency = eval(parameters.phiSPFrequency);
end

parameters.phiSPPeriod    = 1/parameters.phiSPFrequency;


parameters.altSP   = str2double(get_param([modelName, 'z_des'],'Value'));
parameters.thetaSP = str2double(get_param([modelName, 'theta_des'],'Value'));

parameters.tauAlt = str2double(get_param([modelName, 'tau_alt'],'Gain'));
parameters.kdAlt  = str2double(get_param([modelName, 'kd_alt'] ,'Gain'));
parameters.kpAlt  = str2double(get_param([modelName, 'kp_alt'] ,'Gain'));


parameters.tauTheta = str2double(get_param([modelName, 'tau_theta'],'Gain'));
parameters.kdTheta  = str2double(get_param([modelName, 'kd_theta'] ,'Gain'));
parameters.kpTheta  = str2double(get_param([modelName, 'kp_theta'] ,'Gain'));

parameters.tauPhi = str2double(get_param([modelName, 'tau_phi'],'Gain'));
parameters.kdPhi  = str2double(get_param([modelName, 'kd_phi'] ,'Gain'));
parameters.kpPh   = str2double(get_param([modelName, 'kp_phi'] ,'Gain'));


end