function tsc = appendFilteredSignals(tsc)

signalsToFilter =  {'x','y','z','vx','vy','vz','roll','pitch','yaw'};

for i = 1:length(signalsToFilter)
   filteredSignal = filterSignal(eval(sprintf('tsc.%s',signalsToFilter{i})));
   tsc=addts(tsc,filteredSignal, sprintf(sprintf('%sFiltered',signalsToFilter{i})));
end

end