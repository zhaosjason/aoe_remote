function varargout = remote(varargin)
% REMOTE MATLAB code for remote.fig
%      REMOTE, by itself, creates a new REMOTE or raises the existing
%      singleton*.
%
%      H = REMOTE returns the handle to a new REMOTE or the handle to
%      the existing singleton*.
%
%      REMOTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REMOTE.M with the given input arguments.
%
%      REMOTE('Property','Value',...) creates a new REMOTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before remote_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to remote_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help remote

% Last Modified by GUIDE v2.5 02-Dec-2015 01:03:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @remote_OpeningFcn, ...
                   'gui_OutputFcn',  @remote_OutputFcn, ...
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


% --- Executes just before remote is made visible.
function remote_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to remote (see VARARGIN)

% Choose default command line output for remote
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes remote wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = remote_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --------- Begin Button Callbacks ---------

% --- Executes on button press in btnPower.
function btnPower_Callback(hObject, eventdata, handles)
% hObject    handle to btnPower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

txt = get(handles.btnPower, 'String');
if strcmp(txt, 'ON')
	set(handles.lblCmd, 'String', 'Command: Turning TV ON');
	set(handles.btnPower, 'String', 'OFF');
else
	set(handles.lblCmd, 'String', 'Command: Turning TV OFF');
	set(handles.btnPower, 'String', 'ON');
end


% --- Executes on button press in btnOk.
function btnOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in btnUp.
function btnUp_Callback(hObject, eventdata, handles)
% hObject    handle to btnUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnRight.
function btnRight_Callback(hObject, eventdata, handles)
% hObject    handle to btnRight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnDown.
function btnDown_Callback(hObject, eventdata, handles)
% hObject    handle to btnDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnLeft.
function btnLeft_Callback(hObject, eventdata, handles)
% hObject    handle to btnLeft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnRedo.
function btnRedo_Callback(hObject, eventdata, handles)
% hObject    handle to btnRedo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnUndo.
function btnUndo_Callback(hObject, eventdata, handles)
% hObject    handle to btnUndo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnVolP.
function btnVolP_Callback(hObject, eventdata, handles)
% hObject    handle to btnVolP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

vol += 1;
set(handles.lblCmd, 'String', ['Command: Volume UP to ' num2str(vol)]);


% --- Executes on button press in btnVolM.
function btnVolM_Callback(hObject, eventdata, handles)
% hObject    handle to btnVolM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

vol -= 1;
set(handles.lblCmd, 'String', ['Command: Volume DOWN to ' num2str(vol)]);


% --- Executes on button press in btnChP.
function btnChP_Callback(hObject, eventdata, handles)
% hObject    handle to btnChP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ch += 1;
set(handles.lblCmd, 'String', ['Command: Channel UP to ' num2str(ch)]);


% --- Executes on button press in btnChM.
function btnChM_Callback(hObject, eventdata, handles)
% hObject    handle to btnChM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ch -= 1;
set(handles.lblCmd, 'String', ['Command: Channel DOWN to ' num2str(ch)]);


% --- Executes on button press in btnSkype.
function btnSkype_Callback(hObject, eventdata, handles)
% hObject    handle to btnSkype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.lblCmd, 'String', 'Command: Opening Skype...');


% --- Executes on button press in btnCC.
function btnCC_Callback(hObject, eventdata, handles)
% hObject    handle to btnCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.lblCmd, 'String', 'Command: ');


% --- Executes on button press in btnOne.
function btnOne_Callback(hObject, eventdata, handles)
% hObject    handle to btnOne (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnTwo.
function btnTwo_Callback(hObject, eventdata, handles)
% hObject    handle to btnTwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnThree.
function btnThree_Callback(hObject, eventdata, handles)
% hObject    handle to btnThree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnFour.
function btnFour_Callback(hObject, eventdata, handles)
% hObject    handle to btnFour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnFive.
function btnFive_Callback(hObject, eventdata, handles)
% hObject    handle to btnFive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnSix.
function btnSix_Callback(hObject, eventdata, handles)
% hObject    handle to btnSix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnSeven.
function btnSeven_Callback(hObject, eventdata, handles)
% hObject    handle to btnSeven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnEight.
function btnEight_Callback(hObject, eventdata, handles)
% hObject    handle to btnEight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnNine.
function btnNine_Callback(hObject, eventdata, handles)
% hObject    handle to btnNine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnZero.
function btnZero_Callback(hObject, eventdata, handles)
% hObject    handle to btnZero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
