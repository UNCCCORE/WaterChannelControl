function setMotorSpeed(motor,speed,handles)

switch motor
    case 'Port'
        if modelIsOpen()
            set_param('targetModel/portMotorSpeed','Value',saturate(speed,-1,1));
        end
        set(handles.sliderPortSpeed,'Value',str2double(saturate(speed,-1,1)));
        set(handles.editPortSpeed,'String',saturate(speed,-1,1));
    case 'Center'
        if modelIsOpen()
            set_param('targetModel/centerMotorSpeed','Value',saturate(speed,-1,1));
        end
        set(handles.sliderCenterSpeed,'Value',str2double(saturate(speed,-1,1)));
        set(handles.editCenterSpeed,'String',saturate(speed,-1,1));
    case 'Starboard'
        if modelIsOpen()
            set_param('targetModel/starboardMotorSpeed','Value',saturate(speed,-1,1));
        end
        set(handles.sliderStarboardSpeed,'Value',str2double(saturate(speed,-1,1)));
        set(handles.editStarboardSpeed,'String',saturate(speed,-1,1));
    otherwise
end
end

