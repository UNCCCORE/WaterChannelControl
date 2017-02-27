function tsc = compileTimeseriesCollection(tg)
outputs = loadOutputMap;

time = tg.TimeLog;
tsc=tscollection;
for i = 1:length(outputs)
    data = tg.OutputLog(:,i);
    tsc = addts(tsc,timeseries(data,time),outputs{i});
end
end