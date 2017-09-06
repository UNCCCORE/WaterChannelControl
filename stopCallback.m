fprintf('\nModel stopped, running callback.\n')

% Change to root path of simulink model
cd(fileparts(which('targetModel.slx')));
% Add path that contains neccessary functions
addpath(genpath(pwd))

runAfterSim