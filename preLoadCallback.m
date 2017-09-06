if ~exist('tg','var')
    tg=slrt;
end
% set communication time out to 30 seconds
tg.set('CommunicationTimeOut',30000)