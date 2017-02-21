
% Change to root path of simulink model
cd('C:\Users\Doctor V\Desktop\Water Channel Control2');
% Add path that contains neccessary functions
addpath(genpath(pwd))

fprintf('\nCompiling timeseries collection from raw data.\n')
tsc = compileTimeseriesCollection(tg);

fprintf('\nRetrieving constant parameters from model.\n')
parameters = getParameters();

flowSpeed = input('\nPlease specify flow speed [cm/s]:');

fprintf('\nCalculating velocities from position data.\n')
tsc = appendVelocities(tsc,flowSpeed);

fprintf('\nFiltering velocities.\n')
tsc = appendFilteredSignals(tsc);

fprintf('\nCalculating power factor.\n')
tsc = appendPowerFactor(tsc,flowSpeed);

close all
fprintf('\nPlotting results.\n')
[hFig,tscc]=plotOverview(tsc);
% File name format (roll setpoint amplitude)_(roll setpoint period)_(DayMonthYear)_(HourMinSec)
fileName =[num2str(parameters.phiSPAmplitude),'deg_',num2str(parameters.phiSPPeriod,3),'sec_',strrep(strrep(strrep(datestr(now),':',''),' ','_'),'-','')];

saveData
mySaveFigure(hFig,sprintf('Summary_%s',fileName));