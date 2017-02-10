function varargout = WaterChannelGUI_forCV_beta(varargin)
% WATERCHANNELGUI_FORCV_BETA MATLAB code for WaterChannelGUI_forCV_beta.fig
%      WATERCHANNELGUI_FORCV_BETA, by itself, creates a new WATERCHANNELGUI_FORCV_BETA or raises the existing
%      singleton*.
%
%      H = WATERCHANNELGUI_FORCV_BETA returns the handle to a new WATERCHANNELGUI_FORCV_BETA or the handle to
%      the existing singleton*.
%
%      WATERCHANNELGUI_FORCV_BETA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WATERCHANNELGUI_FORCV_BETA.M with the given input arguments.
%
%      WATERCHANNELGUI_FORCV_BETA('Property','Value',...) creates a new WATERCHANNELGUI_FORCV_BETA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WaterChannelGUI_forCV_beta_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WaterChannelGUI_forCV_beta_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WaterChannelGUI_forCV_beta

% Last Modified by GUIDE v2.5 29-Jan-2017 13:51:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WaterChannelGUI_forCV_beta_OpeningFcn, ...
                   'gui_OutputFcn',  @WaterChannelGUI_forCV_beta_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before WaterChannelGUI_forCV_beta is made visible.
function WaterChannelGUI_forCV_beta_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WaterChannelGUI_forCV_beta (see VARARGIN)

% Choose default command line output for WaterChannelGUI_forCV_beta
handles.output = hObject;

% Update_pitch_h handles structure
guidata(hObject, handles);

% UIWAIT makes WaterChannelGUI_forCV_beta wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WaterChannelGUI_forCV_beta_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function H_Cent_New_Val_p_Callback(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H_Cent_New_Val_p as text
%        str2double(get(hObject,'String')) returns contents of H_Cent_New_Val_p as a double
set_param('targetModelcam1xCentroidOverride', 'Value',get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function H_Cent_New_Val_p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


if modelIsOpen()
    set(hObject,'String',get_param('targetModelcam1xCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V_Cent_New_Val_p_Callback(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V_Cent_New_Val_p as text
%        str2double(get(hObject,'String')) returns contents of V_Cent_New_Val_p as a double
set_param('targetModelcam1yCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function V_Cent_New_Val_p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModelcam1yCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Update_pitch_h.
function Update_pitch_h_Callback(hObject, eventdata, handles)
% hObject    handle to Update_pitch_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    if strcmp(get(hObject,'String'),'Release')
        set_param('targetModelcam1centroidOverrideCommand', 'Value', '0');
        set(hObject,'String','Hold');
    else
        set(hObject,'String','Release');
        H_Cent_p = get(handles.H_Cent_New_Val_p, 'string');
        V_Cent_p = get(handles.V_Cent_New_Val_p, 'string');
        set_param('targetModelcam1xCentroidOverride', 'Value', H_Cent_p);
        set_param('targetModelcam1yCentroidOverride', 'Value', V_Cent_p);
        set_param('targetModelcam1centroidOverrideCommand', 'Value', '1');
    end
end



function theta_des_val_Callback(hObject, eventdata, handles)
% hObject    handle to theta_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_des_val as text
%        str2double(get(hObject,'String')) returns contents of theta_des_val as a double


% --- Executes during object creation, after setting all properties.
function theta_des_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/theta_des', 'Value');
    set(hObject,'String',x);
    
end



function phi_des_val_Callback(hObject, eventdata, handles)
% hObject    handle to phi_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi_des_val as text
%        str2double(get(hObject,'String')) returns contents of phi_des_val as a double


% --- Executes during object creation, after setting all properties.
function phi_des_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/phi_des', 'Value');
    set(hObject,'String',x);
    
end



function z_des_val_Callback(hObject, eventdata, handles)
% hObject    handle to z_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_des_val as text
%        str2double(get(hObject,'String')) returns contents of z_des_val as a double


% --- Executes during object creation, after setting all properties.
function z_des_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_des_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/z_des', 'Value');
    set(hObject,'String',x);
    
end


% --- Executes on button press in Control_Mode.
function Control_Mode_Callback(hObject, eventdata, handles)
% hObject    handle to Control_Mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    theta_des = get(handles.theta_des_val, 'string');
    phi_des = get(handles.phi_des_val, 'string');
    z_des = get(handles.z_des_val, 'string');
    phi_amplitude = get(handles.phi_amplitude,'String');
    phi_frequency = get(handles.phi_frequency,'String');
    
    set_param('targetModel/theta_des', 'Value', theta_des);
    set_param('targetModel/phi_des', 'Value', phi_des);
    set_param('targetModel/z_des', 'Value', z_des);
    
    set_param('targetModel/phi_amplitude', 'Value', phi_amplitude);
    set_param('targetModel/phi_frequency', 'Value', phi_frequency);

end


% --- Executes on button press in Automatic.
function Automatic_Callback(hObject, eventdata, handles)
% hObject    handle to Automatic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/control_mode', 'Value', '1');
    set_param('targetModel/phi_control', 'Value', '2');
end


% --- Executes on button press in Manual.
function Manual_Callback(hObject, eventdata, handles)
% hObject    handle to Manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/control_mode', 'Value', '0');
end



% --- Executes during object creation, after setting all properties.
function Roll_Control_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Roll_Control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function Pitch_Control_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pitch_Control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function Altitude_Control_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Altitude_Control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function theta_kp_Callback(hObject, eventdata, handles)
% hObject    handle to theta_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

theta_p = get(hObject, 'Value');
set_param('targetModel/kp_theta', 'Gain', num2str(theta_p));
set(handles.Val4, 'string', theta_p);
assignin('base','kp_theta', theta_p);


% --- Executes on slider movement.
function theta_kd_Callback(hObject, eventdata, handles)
% hObject    handle to theta_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

theta_d = get(hObject, 'Value');
set_param('targetModel/kd_theta', 'Gain', num2str(theta_d));
set(handles.Val5, 'string', theta_d);
assignin('base', 'kd_theta', theta_d);


% --- Executes during object creation, after setting all properties.
function theta_kd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
    PitchDerivitiveGain = get_param('targetModel/kd_theta', 'Gain');
   set(hObject,'Value', str2num(PitchDerivitiveGain));
end


% --- Executes on slider movement.
function theta_tau_Callback(hObject, eventdata, handles)
% hObject    handle to theta_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

theta_t = get(hObject, 'Value');
set_param('targetModel/tau_theta', 'Gain', num2str(1/theta_t));
set(handles.Val6, 'string', theta_t);
assignin('base', 'tau_theta', theta_t);



% --- Executes during object creation, after setting all properties.
function theta_tau_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
    PitchTimeConst = get_param('targetModel/tau_theta', 'Gain');
   set(hObject,'Value', str2num(PitchTimeConst));
end



function Val7_Callback(hObject, eventdata, handles)
% hObject    handle to Val7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val7 as text
%        str2double(get(hObject,'String')) returns contents of Val7 as a double


% --- Executes during object creation, after setting all properties.
function Val7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kp_phi', 'Gain');
    set(hObject,'String',x);
    
end



function Val8_Callback(hObject, eventdata, handles)
% hObject    handle to Val8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val8 as text
%        str2double(get(hObject,'String')) returns contents of Val8 as a double


% --- Executes during object creation, after setting all properties.
function Val8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kd_phi', 'Gain');
    set(hObject,'String',x);
    
end



function Val9_Callback(hObject, eventdata, handles)
% hObject    handle to Val9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val9 as text
%        str2double(get(hObject,'String')) returns contents of Val9 as a double


% --- Executes during object creation, after setting all properties.
function Val9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/tau_phi', 'Gain');
    set(hObject,'String',x);
    
end


% --- Executes on slider movement.
function phi_kp_Callback(hObject, eventdata, handles)
% hObject    handle to phi_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

phi_p = get(hObject, 'Value');
set_param('targetModel/kp_phi', 'Gain', num2str(phi_p));
set(handles.Val7, 'string', phi_p);
assignin('base', 'kp_phi', phi_p);


% --- Executes during object creation, after setting all properties.
function phi_kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/kp_phi', 'Gain');
   set(hObject,'Value', str2double(x));
end


% --- Executes on slider movement.
function phi_kd_Callback(hObject, eventdata, handles)
% hObject    handle to phi_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

phi_d = get(hObject, 'Value');
set_param('targetModel/kd_phi', 'Gain', num2str(phi_d));
set(handles.Val8, 'string', phi_d);
assignin('base', 'kd_phi', phi_d);



% --- Executes during object creation, after setting all properties.
function phi_kd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/kd_phi', 'Gain');
   set(hObject,'Value', str2double(x));
end


% --- Executes on slider movement.
function phi_tau_Callback(hObject, eventdata, handles)
% hObject    handle to phi_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

phi_t = get(hObject, 'Value');
set_param('targetModel/tau_phi', 'Gain', num2str(1/phi_t));
set(handles.Val9, 'string', phi_t);
assignin('base', 'tau_phi', phi_t);


% --- Executes during object creation, after setting all properties.
function phi_tau_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/tau_phi', 'Gain');
   set(hObject,'Value', str2double(x));
end



function Val10_Callback(hObject, eventdata, handles)
% hObject    handle to Val10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val10 as text
%        str2double(get(hObject,'String')) returns contents of Val10 as a double


% --- Executes during object creation, after setting all properties.
function Val10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kp_alt', 'Gain');
    set(hObject,'String',x);
    
end


function Val11_Callback(hObject, eventdata, handles)
% hObject    handle to Val11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val11 as text
%        str2double(get(hObject,'String')) returns contents of Val11 as a double


% --- Executes during object creation, after setting all properties.
function Val11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kd_alt', 'Gain');
    set(hObject,'String',x);
    
end


function Val12_Callback(hObject, eventdata, handles)
% hObject    handle to Val12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Val12 as text
%        str2double(get(hObject,'String')) returns contents of Val12 as a double


% --- Executes during object creation, after setting all properties.
function Val12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/tau_alt', 'Gain');
    set(hObject,'String',x);
    
end


% --- Executes on slider movement.
function z_kp_Callback(hObject, eventdata, handles)
% hObject    handle to z_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

z_p = get(hObject, 'Value');
set_param('targetModel/kp_alt', 'Gain', num2str(z_p));
set(handles.Val10, 'string', z_p);
assignin('base', 'kp_alt', z_p);



% --- Executes during object creation, after setting all properties.
function z_kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/kp_alt', 'Gain');
   set(hObject,'Value', str2double(x));
end


% --- Executes on slider movement.
function z_kd_Callback(hObject, eventdata, handles)
% hObject    handle to z_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

z_d = get(hObject, 'Value');
set_param('targetModel/kd_alt', 'Gain', num2str(z_d));
set(handles.Val11, 'string', z_d);
assignin('base', 'kd_alt', z_d);


% --- Executes during object creation, after setting all properties.
function z_kd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/kd_alt', 'Gain');
   set(hObject,'Value', str2double(x));
end


% --- Executes on slider movement.
function z_tau_Callback(hObject, eventdata, handles)
% hObject    handle to z_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

z_t = get(hObject, 'Value');
set_param('targetModel/tau_alt', 'Gain', num2str(1/z_t));
set(handles.Val12, 'string', z_t);
assignin('base', 'tau_alt', z_t);


% --- Executes during object creation, after setting all properties.
function z_tau_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_tau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
   x = get_param('targetModel/tau_alt', 'Gain');
   set(hObject,'Value', str2double(x));
end





% --- Executes on slider movement.
function port_comd_Callback(hObject, eventdata, handles)
% hObject    handle to port_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

port_Val = get(hObject, 'Value');
set(handles.Val14, 'string', port_Val);
set_param('targetModel/portMotorSpeed', 'Value', num2str(port_Val));



% --- Executes during object creation, after setting all properties.
function port_comd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to port_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function starboard_comd_Callback(hObject, eventdata, handles)
% hObject    handle to starboard_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

star_Val = get(hObject, 'Value');
set(handles.Val15, 'string', star_Val);
set_param('targetModel/starboardMotorSpeed', 'Value', num2str(star_Val));


% --- Executes during object creation, after setting all properties.
function starboard_comd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to starboard_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function forw_comd_Callback(hObject, eventdata, handles)
% hObject    handle to forw_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

forw_Val = get(hObject, 'Value');
set(handles.Val13, 'string', forw_Val);
set_param('targetModel/centerMotorSpeed', 'Value', num2str(forw_Val));



% --- Executes during object creation, after setting all properties.
function forw_comd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to forw_comd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function H_Cent_New_Val_r_Callback(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H_Cent_New_Val_r as text
%        str2double(get(hObject,'String')) returns contents of H_Cent_New_Val_r as a double
set_param('targetModel/roll_slant_cam/xCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function H_Cent_New_Val_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/roll_slant_cam/xCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V_Cent_New_Val_r_Callback(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V_Cent_New_Val_r as text
%        str2double(get(hObject,'String')) returns contents of V_Cent_New_Val_r as a double
set_param('targetModel/roll_slant_cam/yCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function V_Cent_New_Val_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/roll_slant_cam/yCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H_Cent_New_Val_y_Callback(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H_Cent_New_Val_y as text
%        str2double(get(hObject,'String')) returns contents of H_Cent_New_Val_y as a double
set_param('targetModel/yaw_cam/xCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function H_Cent_New_Val_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H_Cent_New_Val_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/yaw_cam/xCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V_Cent_New_Val_y_Callback(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V_Cent_New_Val_y as text
%        str2double(get(hObject,'String')) returns contents of V_Cent_New_Val_y as a double
set_param('targetModel/yaw_cam/yCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function V_Cent_New_Val_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V_Cent_New_Val_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/yaw_cam/yCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Update_roll.
function Update_roll_Callback(hObject, eventdata, handles)
% hObject    handle to Update_roll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    if strcmp(get(hObject,'String'),'Release')
        set_param('targetModel/roll_slant_cam/centroidOverrideCommand', 'Value', '0');
        set(hObject,'String','Hold');
    else
        set(hObject,'String','Release');
        H_Cent_r = get(handles.H_Cent_New_Val_r, 'string');
        V_Cent_r = get(handles.V_Cent_New_Val_r, 'string');
        set_param('targetModel/roll_slant_cam/xCentroidOverride', 'Value', H_Cent_r);
        set_param('targetModel/roll_slant_cam/yCentroidOverride', 'Value', V_Cent_r);
        set_param('targetModel/roll_slant_cam/centroidOverrideCommand', 'Value', '1');
    end
end

% --- Executes on button press in Update_yaw.
function Update_yaw_Callback(hObject, eventdata, handles)
% hObject    handle to Update_yaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    if strcmp(get(hObject,'String'),'Release')
        set_param('targetModel/yaw_cam/centroidOverrideCommand', 'Value', '0');
        set(hObject,'String','Hold');
    else
        set(hObject,'String','Release');
        
        H_Cent_y = get(handles.H_Cent_New_Val_y, 'string');
        V_Cent_y = get(handles.V_Cent_New_Val_y, 'string');
        set_param('targetModel/yaw_cam/xCentroidOverride', 'Value', H_Cent_y);
        set_param('targetModel/yaw_cam/yCentroidOverride', 'Value', V_Cent_y);
        set_param('targetModel/yaw_cam/centroidOverrideCommand', 'Value', '1');
    end
end


% --- Executes when selected object is changed in uipanel11.
function uipanel11_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel11 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'roll_cam'
        set_param('targetModel/img_con', 'Value', '0');
    case 'yaw_cam'
        set_param('targetModel/img_con', 'Value', '1');
    case 'pitch_cam'
        set_param('targetModel/img_con', 'Value', '2');
    case 'pitch_cam_2'
        set_param('targetModel/img_con', 'Value', '3');
end



function H_Cent_newVal_p2_Callback(hObject, eventdata, handles)
% hObject    handle to H_Cent_newVal_p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H_Cent_newVal_p2 as text
%        str2double(get(hObject,'String')) returns contents of H_Cent_newVal_p2 as a double
set_param('targetModelcam2xCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function H_Cent_newVal_p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H_Cent_newVal_p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if  modelIsOpen()
    set(hObject,'String',get_param('targetModelcam2xCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V_Cent_newVal_p2_Callback(hObject, eventdata, handles)
% hObject    handle to V_Cent_newVal_p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V_Cent_newVal_p2 as text
%        str2double(get(hObject,'String')) returns contents of V_Cent_newVal_p2 as a double
set_param('targetModelcam2yCentroidOverride', 'Value',get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function V_Cent_newVal_p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V_Cent_newVal_p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if modelIsOpen()
    set(hObject,'String',get_param('targetModelcam2yCentroidOverride', 'Value'));
else
    set(hObject,'String','')
end
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Update_pitch_v.
function Update_pitch_v_Callback(hObject, eventdata, handles)
% hObject    handle to Update_pitch_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    if strcmp(get(hObject,'String'),'Release')
        set_param('targetModelcam2centroidOverrideCommand', 'Value', '0');
        set(hObject,'String','Hold');
    else
        set(hObject,'String','Release');
        H_Cent_p2 = get(handles.H_Cent_newVal_p2, 'string');
        V_Cent_p2 = get(handles.V_Cent_newVal_p2, 'string');
        set_param('targetModelcam2xCentroidOverride', 'Value', H_Cent_p2);
        set_param('targetModelcam2yCentroidOverride', 'Value', V_Cent_p2);
        set_param('targetModelcam2centroidOverrideCommand', 'Value', '1');
    end
end

% --- Executes on button press in sf_da.
function sf_da_Callback(hObject, eventdata, handles)
% hObject    handle to sf_da (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sf_da

set(handles.df_sa,'Value',0);
set_param('targetModel/tether_config', 'Value', '1');


% --- Executes on button press in df_sa.
function df_sa_Callback(hObject, eventdata, handles)
% hObject    handle to df_sa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of df_sa

set(handles.sf_da,'Value',0);
set_param('targetModel/tether_config', 'Value', '-1');



function x_axis_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_axis as text
%        str2double(get(hObject,'String')) returns contents of x_axis as a double


% --- Executes during object creation, after setting all properties.
function x_axis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function z_axis_Callback(hObject, eventdata, handles)
% hObject    handle to z_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_axis as text
%        str2double(get(hObject,'String')) returns contents of z_axis as a double


% --- Executes during object creation, after setting all properties.
function z_axis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in glob_coord.
function glob_coord_Callback(hObject, eventdata, handles)
% hObject    handle to glob_coord (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x_off = get(handles.x_axis,'string');
z_off = get(handles.z_axis,'string');

set_param('targetModel/x_offset', 'Value', x_off);
set_param('targetModel/z_offset', 'Value', z_off);


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function theta_kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
if modelIsOpen()
    PitchProportionalGain = get_param('targetModel/kp_theta', 'Gain');
   set(hObject,'Value', str2num(PitchProportionalGain));
end



function simstart_Callback(hObject, eventdata, handles)
% hObject    handle to simstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of simstart as text
%        str2double(get(hObject,'String')) returns contents of simstart as a double


% --- Executes during object creation, after setting all properties.
function simstart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
start_time = get(handles.simstart,'string');
set_param('targetModel/start', 'value', start_time);






% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('targetModel/forward_m_comm', 'Value', '0');
set(handles.Val13, 'string', '0');
set(handles.forw_comd, 'Value', 0);


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('targetModel/aft_port_m_comm', 'Value', '0');
set(handles.Val14, 'string', '0');
set(handles.port_comd, 'Value', 0);


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('targetModel/aft_starboard_m_comm', 'Value', '0');
set(handles.Val15, 'string', '0');
set(handles.starboard_comd, 'Value', 0);

% --- Executes during object creation, after setting all properties.
function centroid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to centroid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function motor_speed_setting_Callback(hObject, eventdata, handles)
% hObject    handle to motor_speed_setting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[val status] = str2num(get(hObject,'String'));
if status == 1
    if val>1
        set(hObject,'String','1')
    end
    if val<0
        set(hObject,'String','0')
    end
end


% Hints: get(hObject,'String') returns contents of motor_speed_setting as text
%        str2double(get(hObject,'String')) returns contents of motor_speed_setting as a double



% --- Executes during object creation, after setting all properties.
function motor_speed_setting_CreateFcn(hObject, eventdata, handles)
% hObject    handle to motor_speed_setting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

speed = str2double(get(handles.motor_speed_setting,'String'));
if speed > 1
    speed = 1;
    set(handles.motor_speed_setting,'String',num2str(speed));
end
if speed < 0
    speed = 0;
    set(handles.motor_speed_setting,'String',num2str(speed));
end

switch eventdata.Key
       
    %%% PRESETS
    case 'numpad7'  %ROLL TO PORT
        setMotorSpeed(handles,[0 -speed speed])
        
    case 'numpad9'  %ROLL TO STARBOARD
        setMotorSpeed(handles,[0 speed -speed])
        
    case 'divide'  %ALL TETHERS OUT
        setMotorSpeed(handles,[speed speed speed])
        
    case 'numpad8'  %ALL TETHERS in
         setMotorSpeed(handles,[-speed -speed -speed])
         
        %%% INDIVIDUAL TETHER CONTROLS
    case 'numpad5'  %CENTER TETHER OUT
         setMotorSpeed(handles,[speed 0 0])
         
    case 'numpad2' %CENTER TETHER IN
        setMotorSpeed(handles,[-speed 0 0])
        
    case 'numpad4'  %PORT TETHER OUT
        setMotorSpeed(handles,[0 speed 0])
        
    case 'numpad1' %PORT TETHER IN
        setMotorSpeed(handles,[0 -speed 0])
        
    case 'numpad6'  %STARBOARD TETHER OUT
        setMotorSpeed(handles,[0 0 speed])
        
    case 'numpad3' %STARBOARD TETHER IN
        setMotorSpeed(handles,[0 0 -speed])
        
        %%%% ABORT COMMANDS
    case 'return' %ABORT: ZERO ALL TETHER SPEEDS
        setMotorSpeed(handles,[0 0 0]);
        
    case 'escape' %ABORT: ZERO ALL TETHER SPEEDS
        setMotorSpeed(handlles,[0 0 0]);
        
    case 'numpad0' %ABORT: ZERO ALL TETHER SPEEDS
        setMotorSpeed(handles,[0 0 0]);
        
end


function setMotorSpeed(handles,speeds)
        set(handles.forw_comd, 'Value', speeds(1));
        set(handles.port_comd, 'Value', speeds(2));
        set(handles.starboard_comd, 'Value', speeds(3));
        if modelIsOpen
            set_param('targetModel/centerMotorSpeed', 'Value', num2str(speeds(1)));
            set_param('targetModel/portMotorSpeed', 'Value', num2str(speeds(2)));
            set_param('targetModel/starboardMotorSpeed', 'Value', num2str(speeds(3)));
        end



function result = modelIsOpen()
if strcmp(find_system('Name','targetModel'),'targetModel')
    result = 1;
else
    result = 0;
end


% --- Executes during object creation, after setting all properties.
function Update_pitch_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Update_pitch_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
   x = get_param('targetModelcam1centroidOverrideCommand', 'Value');
   x=str2double(x);
   if x ==0
   set(hObject,'String','Hold' );
   else
   set(hObject,'String', 'Release');   
   end
end


% --- Executes during object creation, after setting all properties.
function Update_pitch_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Update_pitch_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
   x = get_param('targetModelcam2centroidOverrideCommand', 'Value');
   x=str2double(x);
   if x ==0
   set(hObject,'String','Hold' );
   else
   set(hObject,'String', 'Release');   
   end
end


% --- Executes during object creation, after setting all properties.
function Update_roll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Update_roll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
   x = get_param('targetModel/roll_slant_cam/centroidOverrideCommand', 'Value');
   x=str2double(x);
   if x ==0
   set(hObject,'String','Hold' );
   else
   set(hObject,'String', 'Release');   
   end
end


% --- Executes during object creation, after setting all properties.
function Update_yaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Update_yaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
   x = get_param('targetModel/yaw_cam/centroidOverrideCommand', 'Value');
   x=str2double(x);
   if x ==0
   set(hObject,'String','Hold' );
   else
   set(hObject,'String', 'Release');   
   end
end


% --- Executes on button press in OpenLoopButton.
function OpenLoopButton_Callback(hObject, eventdata, handles)
% hObject    handle to OpenLoopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/control_mode', 'Value', '1');
    set_param('targetModel/OpenLoopOverride', 'Value', '2');
    set_param('targetModel/phi_control', 'Value', '1');
end



function phi_amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to phi_amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi_amplitude as text
%        str2double(get(hObject,'String')) returns contents of phi_amplitude as a double


% --- Executes during object creation, after setting all properties.
function phi_amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/phi_amplitude', 'Value');
    set(hObject,'String',x);
    
end



function phi_frequency_Callback(hObject, eventdata, handles)
% hObject    handle to phi_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi_frequency as text
%        str2double(get(hObject,'String')) returns contents of phi_frequency as a double


% --- Executes during object creation, after setting all properties.
function phi_frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/phi_frequency', 'Value');
    set(hObject,'String',x);
    
end


% --- Executes during object creation, after setting all properties.
function sf_da_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sf_da (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    x = get_param('targetModel/tether_config', 'Value');
    x = str2double(x);
    if x == 1
       set(hObject, 'Value',1);
        
    end
    
end


% --- Executes during object creation, after setting all properties.
function df_sa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to df_sa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    x = get_param('targetModel/tether_config', 'Value');
    x = str2double(x);
    if x == -1
       set(hObject, 'Value',1);
        
    end
    
end


% --- Executes during object creation, after setting all properties.
function Val4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kp_theta', 'Gain');
    set(hObject,'String',x);
    
end


% --- Executes during object creation, after setting all properties.
function Val5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/kd_theta', 'Gain');
    set(hObject,'String',x);
    
end


% --- Executes during object creation, after setting all properties.
function Val6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Val6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    x = get_param('targetModel/tau_theta', 'Gain');
    set(hObject,'String',x);
    
end


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/control_mode', 'Value', '1');
    set_param('targetModel/phi_control', 'Value', '1');
end


% --- Executes when selected object is changed in uipanel10.
function uipanel10_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel10 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipanel10_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonHoldAll.
function pushbuttonHoldAll_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonHoldAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    if strcmpi(get(handles.Update_pitch_h,'String'),'Hold');
        Update_pitch_h_Callback(handles.Update_pitch_h,eventdata,handles);
    end
    if strcmpi(get(handles.Update_pitch_v,'String'),'Hold');
        Update_pitch_v_Callback(handles.Update_pitch_v,eventdata,handles);
    end
    if strcmpi(get(handles.Update_roll,'String'),'Hold');
        Update_roll_Callback(handles.Update_roll,eventdata,handles);
    end
    if strcmpi(get(handles.Update_yaw,'String'),'Hold');
        Update_yaw_Callback(handles.Update_yaw,eventdata,handles);
    end
    
end



function pitchDeadbandUpperLimit_Callback(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/pitchDBUpperLimit', 'Value',get(hObject,'String'));
end

% Hints: get(hObject,'String') returns contents of pitchDeadbandUpperLimit as text
%        str2double(get(hObject,'String')) returns contents of pitchDeadbandUpperLimit as a double


% --- Executes during object creation, after setting all properties.
function pitchDeadbandUpperLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/pitchDBUpperLimit', 'Value'))
end



function pitchDeadbandLowerLimit_Callback(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/pitchDBLowerLimit', 'Value',get(hObject,'String'));
end
% Hints: get(hObject,'String') returns contents of pitchDeadbandLowerLimit as text
%        str2double(get(hObject,'String')) returns contents of pitchDeadbandLowerLimit as a double


% --- Executes during object creation, after setting all properties.
function pitchDeadbandLowerLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/pitchDBLowerLimit', 'Value'))
end



function altitudeDeadbandUpperLimit_Callback(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/zDBUpperLimit', 'Value',get(hObject,'String'));
end
% Hints: get(hObject,'String') returns contents of altitudeDeadbandUpperLimit as text
%        str2double(get(hObject,'String')) returns contents of altitudeDeadbandUpperLimit as a double


% --- Executes during object creation, after setting all properties.
function altitudeDeadbandUpperLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/zDBUpperLimit', 'Value'))
end



function altitudeDeadbandLowerLimit_Callback(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/zDBLowerLimit', 'Value',get(hObject,'String'));
end
% Hints: get(hObject,'String') returns contents of altitudeDeadbandLowerLimit as text
%        str2double(get(hObject,'String')) returns contents of altitudeDeadbandLowerLimit as a double


% --- Executes during object creation, after setting all properties.
function altitudeDeadbandLowerLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/zDBLowerLimit', 'Value'))
end


% --- Executes on button press in pitchDeadbandOnOff.
function pitchDeadbandOnOff_Callback(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/thetaDeadbandOnOff', 'Value',num2str(get(hObject,'Value')));
end
% Hint: get(hObject,'Value') returns toggle state of pitchDeadbandOnOff


% --- Executes on button press in altitudeDeadbandOnOff.
function altitudeDeadbandOnOff_Callback(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    set_param('targetModel/zDeadbandOnOff', 'Value',num2str(get(hObject,'Value')));
end
% Hint: get(hObject,'Value') returns toggle state of altitudeDeadbandOnOff


% --- Executes during object creation, after setting all properties.

% hObject    handle to pitchDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pitchDeadbandOnOff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitchDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    set(hObject,'Value',str2double(get_param('targetModel/thetaDeadbandOnOff', 'Value'))==1)
end


% --- Executes during object creation, after setting all properties.
function altitudeDeadbandOnOff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to altitudeDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    set(hObject,'Value',str2double(get_param('targetModel/zDeadbandOnOff', 'Value'))==1)
end
