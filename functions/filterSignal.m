function filteredSignal = filterSignal(signal)

numPts = 10; % 10 points before given time and 10 points after given time;
filteredData=zeros(size(signal.data));

for i = 1:length(signal.data)
    startIndex = i-numPts;
    endIndex   = i+numPts;
    if startIndex<1
        startIndex =1;
    end
    if endIndex>length(signal.data)
        endIndex = length(signal.data);
    end
    filteredData(i)=mean(signal.data(startIndex:endIndex));
    
end
%  filteredData = ((std(filteredData))/(std(signal.data))).*filteredData;
filteredSignal =timeseries(filteredData,signal.time);
end