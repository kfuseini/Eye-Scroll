function varargout = ImageTemplatesGUI(varargin)
% IMAGETEMPLATESGUI MATLAB code for ImageTemplatesGUI.fig
%      IMAGETEMPLATESGUI, by itself, creates a new IMAGETEMPLATESGUI or raises the existing
%      singleton*.
%
%      H = IMAGETEMPLATESGUI returns the handle to a new IMAGETEMPLATESGUI or the handle to
%      the existing singleton*.
%
%      IMAGETEMPLATESGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGETEMPLATESGUI.M with the given input arguments.
%
%      IMAGETEMPLATESGUI('Property','Value',...) creates a new IMAGETEMPLATESGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ImageTemplatesGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ImageTemplatesGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ImageTemplatesGUI

% Last Modified by GUIDE v2.5 13-May-2018 20:51:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ImageTemplatesGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ImageTemplatesGUI_OutputFcn, ...
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


% --- Executes just before ImageTemplatesGUI is made visible.
function ImageTemplatesGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ImageTemplatesGUI (see VARARGIN)
imshow(varargin{1}, 'Parent', handles.axes1);
imshow(varargin{2}, 'Parent', handles.axes2);
imshow(varargin{3}, 'Parent', handles.axes3);

% Choose default command line output for ImageTemplatesGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ImageTemplatesGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ImageTemplatesGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
