
fprintf('\nRunning preLoadCallback.m.\n')
if ~exist('tg','var')
    tg=slrt;
end
% set communication time out to 30 seconds
fprintf('->Setting target communication timeout limit.\n')
tg.set('CommunicationTimeOut',30000)

% Change to root path of simulink model (directory containing this .m file)

fprintf('->Setting working directory.\n')
flprts = strsplit(fileparts(which(mfilename)),filesep);
cd(fullfile(flprts{1:end-1}));
