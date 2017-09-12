fprintf('\nRunning startup.m\n')

fprintf('->Appending path\n')
addpath(genpath(fullfile(pwd,'functions')))
addpath(genpath(fullfile(pwd,'data')))

fprintf('->Opening target simulink model.\n')
preLoadCallback
open_system('targetModel.slx')

clearvars -except tg

fprintf('->Done.\n')

