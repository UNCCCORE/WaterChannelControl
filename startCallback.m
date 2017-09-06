fprintf('\nModel started\n')
% Change to root path of simulink model
cd(fileparts(which('targetModel.slx')));
addpath(genpath(pwd));