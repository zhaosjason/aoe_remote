% AoE Remote
% December 11, 2015
% Jason Zhao, Tara Pichumani, Shin Cousens, Abhiroop Gangopadhyay

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

handles.power = false;
handles.vol = 50;
handles.ch = 0;
handles.cc = false;
handles.buff = '';

set(handles.lblCh, 'String', 'Channel: 0');
set(handles.lblVol, 'String', 'Volume: 50');

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
    handles.power = true;
    guidata(hObject, handles);
else
	set(handles.lblCmd, 'String', 'Command: Turning TV OFF');
	set(handles.btnPower, 'String', 'ON');
    handles.power = false;
    guidata(hObject, handles);
end


% --- Executes on button press in btnOk.
function btnOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power && ~strcmp(handles.buff, '')
    set(handles.lblCh, 'String', ['Channel: ', handles.buff]);
    handles.ch = str2num(handles.buff);
    handles.buff = '';
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', 'Command: OK button (set channel)');
end


% --- Executes on button press in btnUp.
function btnUp_Callback(hObject, eventdata, handles)
% hObject    handle to btnUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: UP button');
end


% --- Executes on button press in btnRight.
function btnRight_Callback(hObject, eventdata, handles)
% hObject    handle to btnRight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: RIGHT button');
end


% --- Executes on button press in btnDown.
function btnDown_Callback(hObject, eventdata, handles)
% hObject    handle to btnDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: DOWN button');
end


% --- Executes on button press in btnLeft.
function btnLeft_Callback(hObject, eventdata, handles)
% hObject    handle to btnLeft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: LEFT button');
end


% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: RESET Button');
    set(handles.lblCh, 'String', 'Channel: 0');
    set(handles.lblVol, 'String', 'Volume: 50');
    handles.ch = 0;
    handles.vol = 50;
    guidata(hObject, handles);
end


% --- Executes on button press in btnRedo.
function btnRedo_Callback(hObject, eventdata, handles)
% hObject    handle to btnRedo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% To be implemented if remote makes it to production
if handles.power
    set(handles.lblCmd, 'String', 'Command: REDO Button');
end


% --- Executes on button press in btnUndo.
function btnUndo_Callback(hObject, eventdata, handles)
% hObject    handle to btnUndo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% To be implemented if remote makes it to production
if handles.power
    set(handles.lblCmd, 'String', 'Command: UNDO Button');
end


% --- Executes on button press in btnVolP.
function btnVolP_Callback(hObject, eventdata, handles)
% hObject    handle to btnVolP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.vol = handles.vol + 1;
    guidata(hObject, handles);
    
    set(handles.lblVol, 'String', ['Volume: ', num2str(handles.vol)]);
    set(handles.lblCmd, 'String', 'Command: Volume UP');
end


% --- Executes on button press in btnVolM.
function btnVolM_Callback(hObject, eventdata, handles)
% hObject    handle to btnVolM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    if handles.vol ~= 0
        handles.vol = handles.vol - 1;
        guidata(hObject, handles);
    end
    
    set(handles.lblVol, 'String', ['Volume: ', num2str(handles.vol)]);
    set(handles.lblCmd, 'String', 'Command: Volume DOWN');
end


% --- Executes on button press in btnChP.
function btnChP_Callback(hObject, eventdata, handles)
% hObject    handle to btnChP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.ch = handles.ch + 1;
    guidata(hObject, handles);
    
    set(handles.lblCh, 'String', ['Channel: ', num2str(handles.ch)]);
    set(handles.lblCmd, 'String', 'Command: Channel UP');
end


% --- Executes on button press in btnChM.
function btnChM_Callback(hObject, eventdata, handles)
% hObject    handle to btnChM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    if handles.ch ~= 0 
        handles.ch = handles.ch - 1;
        guidata(hObject, handles);
    end
    
    set(handles.lblCh, 'String', ['Channel: ', num2str(handles.ch)]);
    set(handles.lblCmd, 'String', 'Command: Channel DOWN');
end


% --- Executes on button press in btnSkype.
function btnSkype_Callback(hObject, eventdata, handles)
% hObject    handle to btnSkype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    set(handles.lblCmd, 'String', 'Command: Opening Skype...');
end


% --- Executes on button press in btnCC.
function btnCC_Callback(hObject, eventdata, handles)
% hObject    handle to btnCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    if handles.cc
        handles.cc = false;
        guidata(hObject, handles);
        set(handles.lblCmd, 'String', 'Command: Turning CC OFF');
    else
        handles.cc = true;
        guidata(hObject, handles);
        set(handles.lblCmd, 'String', 'Command: Turning CC ON');
    end
end

% --- Executes on button press in btnOne.
function btnOne_Callback(hObject, eventdata, handles)
% hObject    handle to btnOne (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '1');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 1 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnTwo.
function btnTwo_Callback(hObject, eventdata, handles)
% hObject    handle to btnTwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '2');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 2 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnThree.
function btnThree_Callback(hObject, eventdata, handles)
% hObject    handle to btnThree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '3');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 3 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnFour.
function btnFour_Callback(hObject, eventdata, handles)
% hObject    handle to btnFour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '4');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 4 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnFive.
function btnFive_Callback(hObject, eventdata, handles)
% hObject    handle to btnFive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '5');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 5 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnSix.
function btnSix_Callback(hObject, eventdata, handles)
% hObject    handle to btnSix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '6');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 6 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnSeven.
function btnSeven_Callback(hObject, eventdata, handles)
% hObject    handle to btnSeven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '7');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 7 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnEight.
function btnEight_Callback(hObject, eventdata, handles)
% hObject    handle to btnEight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '8');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 8 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnNine.
function btnNine_Callback(hObject, eventdata, handles)
% hObject    handle to btnNine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '9');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 9 Button (Buff=', handles.buff, ')']);
end


% --- Executes on button press in btnZero.
function btnZero_Callback(hObject, eventdata, handles)
% hObject    handle to btnZero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.power
    handles.buff = strcat(handles.buff, '0');
    guidata(hObject, handles);
    set(handles.lblCmd, 'String', ['Command: 0 Button (Buff=', handles.buff, ')']);
end
