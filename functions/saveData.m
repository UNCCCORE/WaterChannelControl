

fullFileName = [pwd,'\data\',fileName,'.mat'];
data=tg.OutputLog;
save(fullFileName,'data');
save(fullFileName,'tsc','-append');
save(fullFileName,'tscc','-append');
save(fullFileName,'parameters','-append');