function outputMap = loadOutputMap()
% this function names the timeseries according to the label on the output
% block


% get a list of all blocks in the modell
blks = find_system('targetModel','Type','block');
% get a boolean vector where 1 indicates that it's an output, then get
% those block names
outs = blks(strcmp(get_param(blks(:),'BlockType'),'Outport'));
% get only top level out blocks, those where '/' appears exactly once in
% the name
topOuts = outs(cell2mat(cellfun(@(x) length(x)==1,regexp(outs,'/'),'UniformOutput',0)));
% get a list of the names of the blocks
names = cellfun(@(x) get_param(x,'Name'),topOuts,'UniformOutput',0);
% get a list of the port numbers of the blocks
portNums = cell2mat(cellfun(@(x) str2double(get_param(x,'Port')),topOuts,'UniformOutput',0));

for i = 1:length(portNums)
   outputMap{portNums(i)}=strrep(names{portNums(i)},' ',''); 
    
end

end