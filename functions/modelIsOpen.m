function result = modelIsOpen()
if ~isempty(find_system('Name','targetModel'))
    result = 1;
else
    result = 0;
end
