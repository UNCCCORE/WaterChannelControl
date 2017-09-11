function parameters = getParameters2()

% Get first-tier constants
consts  =  find_system('targetModel','SearchDepth',1,'BlockType','Constant');
for ii = 1:length(consts)
    strParts = strsplit(consts{ii},'/');
    eval(sprintf('parameters.%s=%s;',strParts{end},num2str(get_param(consts{ii},'Value'))))
end

gains   =  find_system('targetModel','SearchDepth',1,'BlockType','Gain');
for ii = 1:length(gains)
    strParts = strsplit(gains{ii},'/');
    strParts{end} = strtrim(strParts{end}); %Strip leading and trailing whitespace
    if ~contains(lower(strParts{end}),'rad2deg')  
        eval(sprintf('parameters.%s=%s;',strParts{end},num2str(get_param(gains{ii},'Gain'))))
    end
end


end