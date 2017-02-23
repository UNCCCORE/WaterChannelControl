function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 10-Feb-2017 18:00:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @GUI_OpeningFcn, ...
    'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    switch eventdata.NewValue.String
        case 'Cam 1'
            set_param('targetModel/imageSource', 'Value', '2');
        case 'Cam 2'
            set_param('targetModel/imageSource', 'Value', '0');
        case 'Cam 3A'
            set_param('targetModel/imageSource', 'Value', '1');
        case 'Cam 3B'
            set_param('targetModel/imageSource', 'Value', '3');
    end
end

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
addpath(genpath([pwd,'/functions']));


% --- Executes during object creation, after setting all properties.
function uibuttongroup1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

eventdata.NewValue.String=hObject.SelectedObject.String;
uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)



function editROI1H_Callback(hObject, eventdata, handles)
% hObject    handle to editROI1H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI1H as text
%        str2double(get(hObject,'String')) returns contents of editROI1H as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam1/xCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function editROI1H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI1H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam1/xCentroidOverride','Value'))
end



function editROI2H_Callback(hObject, eventdata, handles)
% hObject    handle to editROI2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI2H as text
%        str2double(get(hObject,'String')) returns contents of editROI2H as a double

num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam2/xCentroidOverride','Value',num2str(num));
end
% --- Executes during object creation, after setting all properties.
function editROI2H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam2/xCentroidOverride','Value'))
end



function editROI3AH_Callback(hObject, eventdata, handles)
% hObject    handle to editROI3AH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI3AH as text
%        str2double(get(hObject,'String')) returns contents of editROI3AH as a double

num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam3A/xCentroidOverride','Value',num2str(num));
end
% --- Executes during object creation, after setting all properties.
function editROI3AH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI3AH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam3A/xCentroidOverride','Value'))
end


function editROI3BH_Callback(hObject, eventdata, handles)
% hObject    handle to editROI3BH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI3BH as text
%        str2double(get(hObject,'String')) returns contents of editROI3BH as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam3B/xCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function editROI3BH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI3BH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam3B/xCentroidOverride','Value'))
end


function editROI1V_Callback(hObject, eventdata, handles)
% hObject    handle to editROI1V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI1V as text
%        str2double(get(hObject,'String')) returns contents of editROI1V as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam1/yCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function editROI1V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI1V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam1/yCentroidOverride','Value'))
end


function editROI2V_Callback(hObject, eventdata, handles)
% hObject    handle to editROI2V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI2V as text
%        str2double(get(hObject,'String')) returns contents of editROI2V as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam2/yCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function editROI2V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI2V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam2/yCentroidOverride','Value'))
end


function editROI3AV_Callback(hObject, eventdata, handles)
% hObject    handle to editROI3AV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editROI3AV as text
%        str2double(get(hObject,'String')) returns contents of editROI3AV as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam3A/yCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function editROI3AV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editROI3AV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam3A/yCentroidOverride','Value'))
end


function edit3BV_Callback(hObject, eventdata, handles)
% hObject    handle to edit3BV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3BV as text
%        str2double(get(hObject,'String')) returns contents of edit3BV as a double
num = str2num(hObject.String{:});
if ~isempty(num) && modelIsOpen()
    set_param('targetModel/cam3B/yCentroidOverride','Value',num2str(num));
end

% --- Executes during object creation, after setting all properties.
function edit3BV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3BV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/cam3B/yCentroidOverride','Value'))
end


% --- Executes on button press in togglebuttonROI1.
function togglebuttonROI1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebuttonROI1
if modelIsOpen()
    if strcmpi(hObject.String,'hold')
        set_param('targetModel/cam1/centroidOverrideCommand','Value','1')
        set(hObject,'String','Release');
        set(hObject,'Value',0);
    else
        set_param('targetModel/cam1/centroidOverrideCommand','Value','0')
        set(hObject,'String','Hold');
        set(hObject,'Value',1);
    end
end
% --- Executes on button press in togglebuttonROI3A.
function togglebuttonROI3A_Callback(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI3A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebuttonROI3A
if modelIsOpen()
    if strcmpi(hObject.String,'hold')
        set_param('targetModel/cam3A/centroidOverrideCommand','Value','1')
        set(hObject,'String','Release');
        set(hObject,'Value',0);
    else
        set_param('targetModel/cam3A/centroidOverrideCommand','Value','0')
        set(hObject,'String','Hold');
        set(hObject,'Value',1);
    end
end
% --- Executes on button press in togglebuttonROI3B.
function togglebuttonROI3B_Callback(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI3B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebuttonROI3B
if modelIsOpen()
    if strcmpi(hObject.String,'hold')
        set_param('targetModel/cam3B/centroidOverrideCommand','Value','1')
        set(hObject,'String','Release');
        set(hObject,'Value',0);
    else
        set_param('targetModel/cam3B/centroidOverrideCommand','Value','0')
        set(hObject,'String','Hold');
        set(hObject,'Value',1);
    end
end

% --- Executes on button press in togglebuttonROI2.
function togglebuttonROI2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebuttonROI2
if modelIsOpen()
    if strcmpi(hObject.String,'hold')
        set_param('targetModel/cam2/centroidOverrideCommand','Value','1')
        set(hObject,'String','Release');
        set(hObject,'Value',0);
    else
        set_param('targetModel/cam2/centroidOverrideCommand','Value','0')
        set(hObject,'String','Hold');
        set(hObject,'Value',1);
    end
end


% --- Executes during object creation, after setting all properties.
function togglebuttonROI1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    
    switch get_param('targetModel/cam1/centroidOverrideCommand','Value')
        case '1'
            set(hObject,'String','Release');
            set(hObject,'Value',0);
        case '0'
            set(hObject,'String','Hold');
            set(hObject,'Value',1);
        otherwise %if the value is set to something wierd, override and re-run this function
            set_param('targetModel/cam1/centroidOverrideCommand','Value','1');
            togglebuttonROI1_CreateFcn(hObject, eventdata, handles);
    end
    
end


% --- Executes during object creation, after setting all properties.
function togglebuttonROI2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    
    switch get_param('targetModel/cam2/centroidOverrideCommand','Value')
        case '1'
            set(hObject,'String','Release');
            set(hObject,'Value',0);
        case '0'
            set(hObject,'String','Hold');
            set(hObject,'Value',1);
        otherwise %if the value is set to something wierd, override and re-run this function
            set_param('targetModel/cam2/centroidOverrideCommand','Value','1');
            togglebuttonROI1_CreateFcn(hObject, eventdata, handles);
    end
    
end


% --- Executes during object creation, after setting all properties.
function togglebuttonROI3A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI3A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    
    switch get_param('targetModel/cam3A/centroidOverrideCommand','Value')
        case '1'
            set(hObject,'String','Release');
            set(hObject,'Value',0);
        case '0'
            set(hObject,'String','Hold');
            set(hObject,'Value',1);
        otherwise %if the value is set to something wierd, override and re-run this function
            set_param('targetModel/cam3B/centroidOverrideCommand','Value','1');
            togglebuttonROI1_CreateFcn(hObject, eventdata, handles);
    end
    
end


% --- Executes during object creation, after setting all properties.
function togglebuttonROI3B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to togglebuttonROI3B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    
    switch get_param('targetModel/cam3B/centroidOverrideCommand','Value')
        case '1'
            set(hObject,'String','Release');
            set(hObject,'Value',0);
        case '0'
            set(hObject,'String','Hold');
            set(hObject,'Value',1);
        otherwise %if the value is set to something wierd, override and re-run this function
            set_param('targetModel/cam3B/centroidOverrideCommand','Value','1');
            togglebuttonROI1_CreateFcn(hObject, eventdata, handles);
    end
    
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
   cams = {'cam1','cam2','cam3A','cam3B'};
   roiHandles = {'ROI1','ROI2','ROI3A','ROI3B'};
   for i = 1:length(cams)
       set_param(['targetModel/' cams{i} '/centroidOverrideCommand'],'Value','1');
       set(eval(['handles.togglebutton' roiHandles{i}]),'Value',1)
       set(eval(['handles.togglebutton' roiHandles{i}]),'String','Release')
   end
end





% --- Executes during object creation, after setting all properties.
function uibuttongroupControlMode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroupControlMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in uibuttongroupControlMode.
function uibuttongroupControlMode_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupControlMode 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    switch hObject.String
        case 'Manual'
            set_param('targetModel/controlMode','Value','0');
        case 'Closed Loop - Constant Setpoints'
            set_param('targetModel/phiControl','Value','1');
            set_param('targetModel/controlMode','Value','1');
        case 'Closed Loop - Crosswind'
            set_param('targetModel/phiControl','Value','2');
            set_param('targetModel/controlMode','Value','1');
    end
end


% --- Executes when uibuttongroupControlMode is resized.
function uibuttongroupControlMode_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroupControlMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function sliderPortSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to sliderPortSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
setMotorSpeed('Port',num2str(get(hObject,'Value')),handles);

% --- Executes during object creation, after setting all properties.
function sliderPortSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderPortSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderCenterSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to sliderCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
setMotorSpeed('Center',num2str(get(hObject,'Value')),handles);

% --- Executes during object creation, after setting all properties.
function sliderCenterSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editPortSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editPortSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPortSpeed as text
%        str2double(get(hObject,'String')) returns contents of editPortSpeed as a double
% set(hObject,'String',saturate(get(hObject,'String'),-1,1));
% set(handles.sliderPortSpeed,'Value',str2num(saturate(get(hObject,'String'),0,1)));
% if modelIsOpen()
%    set_param('targetModel/portMotorSpeed','Value', saturate(get(hObject,'String'),-1,1));
%    set(handles.sliderPortSpeed,'Value',str2double(saturate(get(hObject,'String'),-1,1)));
% end
setMotorSpeed('Port',get(hObject,'String'),handles);


% --- Executes during object creation, after setting all properties.
function editPortSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPortSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
   set(hObject,'String',saturate(get_param('targetModel/portMotorSpeed','Value'),-1,1));
end



function editCenterSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCenterSpeed as text
%        str2double(get(hObject,'String')) returns contents of editCenterSpeed as a double

setMotorSpeed('Center',get(hObject,'String'),handles);

% --- Executes during object creation, after setting all properties.
function editCenterSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
   set(hObject,'String',saturate(get_param('targetModel/centerMotorSpeed','Value'),-1,1));
end




% --- Executes on button press in pushbuttonStopAllMotors.
function pushbuttonStopAllMotors_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStopAllMotors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
setMotorSpeed('Port','0',handles);
setMotorSpeed('Starboard','0',handles);
setMotorSpeed('Center','0',handles);
end





% --- Executes during object creation, after setting all properties.
function editStarboardSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editStarboardSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
   set(hObject,'String',saturate(get_param('targetModel/starboardMotorSpeed','Value'),-1,1));
end
function editStarboardSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCenterSpeed as text
%        str2double(get(hObject,'String')) returns contents of editCenterSpeed as a double

setMotorSpeed('Starboard',get(hObject,'String'),handles);

% --- Executes during object creation, after setting all properties.
function sliderStarboardSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderStarboardSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderStarboardSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to sliderCenterSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
setMotorSpeed('Starboard',num2str(get(hObject,'Value')),handles);

% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
if modelIsOpen()
    speed = str2double(get(handles.editHotkeyMotorSpeed,'String'));
    switch eventdata.Key
        case 'numpad1'
            setMotorSpeed('Port',num2str(-speed),handles);
        case 'numpad2'
            setMotorSpeed('Center',num2str(-speed),handles);
        case 'numpad3'
            setMotorSpeed('Starboard',num2str(-speed),handles);
        case 'numpad4'
            setMotorSpeed('Port',num2str(speed),handles);
        case 'numpad5'
            setMotorSpeed('Center',num2str(speed),handles);
        case 'numpad6'
            setMotorSpeed('Starboard',num2str(speed),handles);
        case 'numpad7'
            setMotorSpeed('Port',num2str(-speed),handles);
            setMotorSpeed('Starboard',num2str(speed),handles);
        case 'divide' % Pitch up
            setMotorSpeed('Port',num2str(-speed),handles);
            setMotorSpeed('Center',num2str(speed),handles);
            setMotorSpeed('Starboard',num2str(-speed),handles);
        case 'numpad8' % pitch down
            setMotorSpeed('Port',num2str(speed),handles);
            setMotorSpeed('Center',num2str(-speed),handles);
            setMotorSpeed('Starboard',num2str(speed),handles);
        case 'subtract' % All tethers retract
            setMotorSpeed('Port',num2str(-speed),handles);
            setMotorSpeed('Center',num2str(-speed),handles);
            setMotorSpeed('Starboard',num2str(-speed),handles);
        case 'add' % all tethers 
            setMotorSpeed('Port',num2str(speed),handles);
            setMotorSpeed('Center',num2str(speed),handles);
            setMotorSpeed('Starboard',num2str(speed),handles);
        case 'numpad9'
            setMotorSpeed('Port',num2str(speed),handles);
            setMotorSpeed('Starboard',num2str(-speed),handles);
        case 'return'
            pushbuttonStopAllMotors_Callback(handles.pushbuttonStopAllMotors, eventdata, handles)
        case 'esc'
            pushbuttonStopAllMotors_Callback(handles.pushbuttonStopAllMotors, eventdata, handles)
        case 'del'
            pushbuttonStopAllMotors_Callback(handles.pushbuttonStopAllMotors, eventdata, handles)
    end
end



function editHotkeyMotorSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editHotkeyMotorSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editHotkeyMotorSpeed as text
%        str2double(get(hObject,'String')) returns contents of editHotkeyMotorSpeed as a double
set(hObject,'String',saturate(get(hObject,'String'),0,1));
set(handles.sliderHotkeyMotorSpeed,'Value',str2num(saturate(get(hObject,'String'),0,1)));

% --- Executes during object creation, after setting all properties.
function editHotkeyMotorSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editHotkeyMotorSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0.5')


% --- Executes on slider movement.
function sliderHotkeyMotorSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to sliderHotkeyMotorSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.editHotkeyMotorSpeed,'String',num2str(hObject.Value))


% --- Executes during object creation, after setting all properties.
function sliderHotkeyMotorSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderHotkeyMotorSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'Value',0.5);

function figure1_KeyReleaseFcn(hObject,eventData,handles)



function editKPRoll_Callback(hObject, eventdata, handles)
% hObject    handle to editKPRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKPRoll as text
%        str2double(get(hObject,'String')) returns contents of editKPRoll as a double
if modelIsOpen()
   set_param('targetModel/kpRoll','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKPRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKPRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kpRoll','Gain'))
end


function editKDRoll_Callback(hObject, eventdata, handles)
% hObject    handle to editKDRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKDRoll as text
%        str2double(get(hObject,'String')) returns contents of editKDRoll as a double
if modelIsOpen()
   set_param('targetModel/kdRoll','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKDRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKDRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kdRoll','Gain'))
end


function editTauRoll_Callback(hObject, eventdata, handles)
% hObject    handle to editTauRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTauRoll as text
%        str2double(get(hObject,'String')) returns contents of editTauRoll as a double
if modelIsOpen()
   set_param('targetModel/tauRoll','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editTauRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTauRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/tauRoll','Gain'))
end


function editKPPitch_Callback(hObject, eventdata, handles)
% hObject    handle to editKPPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKPPitch as text
%        str2double(get(hObject,'String')) returns contents of editKPPitch as a double
if modelIsOpen()
   set_param('targetModel/kpPitch','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKPPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKPPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kpPitch','Gain'))
end


function editKDPitch_Callback(hObject, eventdata, handles)
% hObject    handle to editKDPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKDPitch as text
%        str2double(get(hObject,'String')) returns contents of editKDPitch as a double
if modelIsOpen()
   set_param('targetModel/kdPitch','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKDPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKDPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kdPitch','Gain'))
end


function editTauPitch_Callback(hObject, eventdata, handles)
% hObject    handle to editTauPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTauPitch as text
%        str2double(get(hObject,'String')) returns contents of editTauPitch as a double
if modelIsOpen()
   set_param('targetModel/tauPitch','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editTauPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTauPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/tauPitch','Gain'))
end


function editKPAltitude_Callback(hObject, eventdata, handles)
% hObject    handle to editKPAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKPAltitude as text
%        str2double(get(hObject,'String')) returns contents of editKPAltitude as a double
if modelIsOpen()
   set_param('targetModel/kpAltitude','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKPAltitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKPAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kpAltitude','Gain'))
end


function editKDAltitude_Callback(hObject, eventdata, handles)
% hObject    handle to editKDAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKDAltitude as text
%        str2double(get(hObject,'String')) returns contents of editKDAltitude as a double
if modelIsOpen()
   set_param('targetModel/kdAltitude','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editKDAltitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKDAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/kdAltitude','Gain'))
end



function editTauAltitude_Callback(hObject, eventdata, handles)
% hObject    handle to editTauAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTauAltitude as text
%        str2double(get(hObject,'String')) returns contents of editTauAltitude as a double
if modelIsOpen()
   set_param('targetModel/tauAltitude','Gain',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editTauAltitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTauAltitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/tauAltitude','Gain'))
end



function editRollSetpoint_Callback(hObject, eventdata, handles)
% hObject    handle to editRollSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editRollSetpoint as text
%        str2double(get(hObject,'String')) returns contents of editRollSetpoint as a double
if modelIsOpen()
     set_param('targetModel/phiDes','Value',hObject.String)
end

% --- Executes during object creation, after setting all properties.
function editRollSetpoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRollSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/phiDes','Value'))
end


function editPitchSetpoint_Callback(hObject, eventdata, handles)
% hObject    handle to editPitchSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPitchSetpoint as text
%        str2double(get(hObject,'String')) returns contents of editPitchSetpoint as a double
if modelIsOpen()
    set_param('targetModel/thetaDes','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editPitchSetpoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPitchSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/thetaDes','Value'))
end



function editAltitudeSetpoint_Callback(hObject, eventdata, handles)
% hObject    handle to editAltitudeSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAltitudeSetpoint as text
%        str2double(get(hObject,'String')) returns contents of editAltitudeSetpoint as a double
if modelIsOpen()
    set_param('targetModel/zDes','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editAltitudeSetpoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAltitudeSetpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/zDes','Value'))
end



function editCrosswindPeriod_Callback(hObject, eventdata, handles)
% hObject    handle to editCrosswindPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCrosswindPeriod as text
%        str2double(get(hObject,'String')) returns contents of editCrosswindPeriod as a double
if modelIsOpen()
    set_param('targetModel/phiFrequency','Value',num2str(eval(hObject.String)))
end

% --- Executes during object creation, after setting all properties.
function editCrosswindPeriod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCrosswindPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/phiFrequency','Value'))
end


function editCrosswindAmplitude_Callback(hObject, eventdata, handles)
% hObject    handle to editCrosswindAmplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCrosswindAmplitude as text
%        str2double(get(hObject,'String')) returns contents of editCrosswindAmplitude as a double
if modelIsOpen()
    set_param('targetModel/phiAmplitude','Value',num2str(eval(hObject.String)))
end

% --- Executes during object creation, after setting all properties.
function editCrosswindAmplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCrosswindAmplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/phiAmplitude','Value'))
end



function editPitchDeadbandUpperLimit_Callback(hObject, eventdata, handles)
% hObject    handle to editPitchDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPitchDeadbandUpperLimit as text
%        str2double(get(hObject,'String')) returns contents of editPitchDeadbandUpperLimit as a double
if modelIsOpen()
   set_param('targetModel/pitchDBUpperLimit','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editPitchDeadbandUpperLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPitchDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/pitchDBUpperLimit','Value'))
end


function editPitchDeadbandLowerLimit_Callback(hObject, eventdata, handles)
% hObject    handle to editPitchDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPitchDeadbandLowerLimit as text
%        str2double(get(hObject,'String')) returns contents of editPitchDeadbandLowerLimit as a double
if modelIsOpen()
   set_param('targetModel/pitchDBLowerLimit','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editPitchDeadbandLowerLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPitchDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',get_param('targetModel/pitchDBLowerLimit','Value'))
end

% --- Executes on button press in checkboxPitchDeadbandOnOff.
function checkboxPitchDeadbandOnOff_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxPitchDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxPitchDeadbandOnOff
if modelIsOpen()
    set_param('targetModel/thetaDeadbandOnOff','Value',num2str(hObject.Value))
end


% --- Executes during object creation, after setting all properties.
function checkboxPitchDeadbandOnOff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkboxPitchDeadbandOnOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    set(hObject,'Value',str2double(get_param('targetModel/thetaDeadbandOnOff','Value')));
end



function editAltitudeDeadbandUpperLimit_Callback(hObject, eventdata, handles)
% hObject    handle to editAltitudeDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAltitudeDeadbandUpperLimit as text
%        str2double(get(hObject,'String')) returns contents of editAltitudeDeadbandUpperLimit as a double
if modelIsOpen()
   set_param('targetModel/zDBUpperLimit','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editAltitudeDeadbandUpperLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAltitudeDeadbandUpperLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',str2double(get_param('targetModel/zDBUpperLimit','Value')));
end

% --- Executes on button press in checkboxAltitudeDeadband.
function checkboxAltitudeDeadband_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxAltitudeDeadband (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxAltitudeDeadband
if modelIsOpen()
    set_param('targetModel/zDeadbandOnOff','Value',num2str(hObject.Value))
end


% --- Executes during object creation, after setting all properties.
function checkboxAltitudeDeadband_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkboxAltitudeDeadband (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
if modelIsOpen()
    set(hObject,'Value',str2double(get_param('targetModel/zDeadbandOnOff','Value')));
end


function editAltitudeDeadbandLowerLimit_Callback(hObject, eventdata, handles)
% hObject    handle to editAltitudeDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAltitudeDeadbandLowerLimit as text
%        str2double(get(hObject,'String')) returns contents of editAltitudeDeadbandLowerLimit as a double
if modelIsOpen()
   set_param('targetModel/zDBLowerLimit','Value',num2str(hObject.String))
end

% --- Executes during object creation, after setting all properties.
function editAltitudeDeadbandLowerLimit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAltitudeDeadbandLowerLimit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
if modelIsOpen()
    set(hObject,'String',str2double(get_param('targetModel/zDBLowerLimit','Value')));
end
