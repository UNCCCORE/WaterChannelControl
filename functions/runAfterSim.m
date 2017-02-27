fprintf('\nCompiling timeseries collection from raw data.\n')
tsc = compileTimeseriesCollection(tg);

fprintf('\nRetrieving constant parameters from model.\n')
parameters = getParameters();

fprintf('\nCalculating velocities from position data.\n')
tsc = appendVelocities(tsc);

fprintf('\nFiltering velocities.\n')
tsc = appendFilteredSignals(tsc);

fprintf('\nCalculating power factor.\n')
tsc = appendPowerFactor(tsc,flowSpeed);

fileName =strrep(strrep(strrep(datestr(now),':',''),' ','_'),'-','');
fprintf('\nSaving data as .\\data\\%s.\n',fileName)
saveData