function varargout = OPT2MENU(varargin)
% Last Modified by GUIDE v2.5 17-Feb-2017 10:53:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @OPT2MENU_OpeningFcn, ...
    'gui_OutputFcn',  @OPT2MENU_OutputFcn, ...
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


% --- Executes just before OPT2MENU is made visible.
function OPT2MENU_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
load('Modelbase.mat')
global modelslist;
global ruleslist;
global exercise;
global figure_handle;
global AL_Models;
exercise=modelbase.exercise;
ruleslist=[handles.user,handles.mospporu,handles.taylor,handles.gero,handles.lewiwi,handles.smwous,...
    handles.cheiev,handles.orpwie08,handles.orpwie,handles.coenenetal2012,handles.chmoro];
figure_handle = openfig('OPT2MENU_AL.fig','new','invisible');
handles.almodels1=allchild(findobj(figure_handle,'Tag','groupalmodels'));
if verLessThan('matlab','8.4')
    % -- Code to run in MATLAB R2014a and earlier here --
    s=2;
else
    % -- Code to run in MATLAB R2014b and later here --
    s=1;
end
for i=s:size(handles.almodels1,1)
    aa=get(handles.almodels1(i),'Tag');
    eval(['handles.' aa '= handles.almodels1(i);'])
end
modelslist=[handles.nkrw97, handles.nklww03, handles.nkcgg99,...
    handles.nkcgg02, handles.nkmcn99cr, handles.nkir04,...
    handles.nkbgg99, handles.nkgm05, handles.nkgk09lin,...
    handles.nkck08, handles.nkckl09, handles.nkrw06,...
    handles.usfm95, handles.usow98, handles.usfrb03,...
    handles.usfrb08, handles.usfrb08mx, handles.ussw07,...
    handles.usacelm, handles.usacelt, handles.usacelswm,...
    handles.usacelswt, handles.usrs99, handles.usor03,...
    handles.uspm08, handles.uspm08fl, handles.usdg08,...
    handles.uscd08, handles.usiac05, handles.usmr07, ...
    handles.usra07, handles.uscctw10, handles.usir11, ...
    handles.eacw05ta, handles.eacw05fm, handles.eaawm05, ...
    handles.easw03, handles.easr07, handles.eaquest3,...
    handles.eackl09, handles.eage10, handles.g7tay93,  ...
    handles.g3cw03, handles.eaczgem03, handles.g2sigma08, ...
    handles.eausnawm08, handles.eaesra09, handles.clms07,  ...
    handles.brasamba08, handles.cals07, handles.hkfpp11,  ...
    handles.usin10, handles.uscmr10, handles.uscmr10fa ,...
    handles.usvmdno, handles.usvmdop, handles.eagnss10,...
    handles.nkmm10, handles.nkkrs12, handles.hkfp13,...
    handles.eausnawmctww,handles.nkcw09,handles.gpm6imf13,...
    handles.cabmz12,handles.nkgk11,handles.uscmr14,...
    handles.uscmr14nofa,handles.eaqr14,handles.nkrw97al,...
    handles.nklww03al,handles.nkcgg99al,handles.nkcgg02al,...
    handles.nkir04al,handles.nkbgg99al,handles.nkrw06al...
    handles.usfm95al,handles.ussw07al,handles.usmi07al,...
    handles.usyr13al,handles.nket14,handles.nkgk13,...
    handles.eadkr11, handles.nkbgeu10,handles.nkbgus10,...
    handles.rbcdtt11,handles.uscfop14,handles.usjpt11,...
    handles.uscps10,handles.nkns14,handles.usdngs15,...
    handles.usfms134,handles.nkafl15,handles.usfgk15];
if exercise==1
    set(handles.loprse, 'Enable', 'off')
end
checkall(ruleslist,0);
checkall(modelslist,0);
try
    set(get(handles.uipanel16,'SelectedObject'),'Value',0)
catch
end
try
    set(get(handles.uipanel10,'SelectedObject'),'Value',0)
catch
end
clear Modelbase.mat
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = OPT2MENU_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Callback Functions for Rule Checkboxes %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function rules_Callback(hObject, eventdata, handles)
global rule;
global ruleslist;
global data;
if ~get(hObject,'Value')
    set(handles.allavailablerules,'Value',0);
end
if ~isempty(findobj(ruleslist,'Tag',get(hObject,'Tag')))
    rule(find(ruleslist==findobj(ruleslist,'Tag',get(hObject,'Tag'))))=get(hObject,'Value');
    if find(ruleslist==findobj(ruleslist,'Tag',get(hObject,'Tag')))==1 && get(hObject,'Value')
        USERRULE
        waitfor(USERRULE);
        if isempty(find(data(~isnan(data))~=0))
            rule(find(ruleslist==findobj(ruleslist,'Tag',get(hObject,'Tag'))))=0;
            set(handles.user,'Value',0);
        end
    end
elseif strcmp(get(hObject,'Tag'),'allavailablerules')
    rule(3:max(size(rule)))=get(hObject,'Value');
    set(ruleslist(3:max(size(rule))), 'Value', get(hObject,'Value'));
    if strcmp(get(handles.mospporu, 'Enable'), 'on')
        set(ruleslist(2), 'Value', get(hObject,'Value'));
        rule(2)=get(hObject,'Value');
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% Model Selection %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function uipanel10_SelectionChangeFcn(hObject, eventdata, handles)
global modelsvec;
global modelslist;
global model_with_rule;
global rule;
global AL_Models figure_handle;
i=1:max(size(modelsvec));
modelsvec(i)=0;
if ~isempty(findobj(modelslist,'Tag',get(eventdata.NewValue,'Tag')))
    number = find(modelslist==findobj(modelslist,'Tag',get(eventdata.NewValue,'Tag')));
    modelsvec(number)=1;
    if ~isempty(find(model_with_rule==number))
        set(handles.mospporu, 'Enable','on');
    else
        set(handles.mospporu, 'Enable','off');
        set(handles.mospporu, 'Value',0);
        rule(2)=0;
    end
    set(figure_handle,'Visible','off');
    set(handles.almodels1,'Value',0);
    set(handles.orpwie08, 'Enable','on'); %re-enables the OW08 Rule if no AL model is selected

elseif strcmp(get(hObject,'Tag'),'allalmodels')
    OPT2MENU_AL
      waitfor(OPT2MENU_AL);
   try 
   number =  find(modelsvec);
   if ~isempty(find(model_with_rule==number))
        set(handles.mospporu, 'Enable','on');
   else
        set(handles.mospporu, 'Enable','off');
        set(handles.mospporu, 'Value',0);
        rule(2)=0;
   end
      end
      set(handles.orpwie08, 'Enable','off'); %Disables the OW08 Rule if an AL model is selected
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% Choice of Shocks, Plot Options and MMB descriptions %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function options_Callback(hObject, eventdata, handles)
global option1;
global option2;
global option5;
switch get(hObject,'Tag')
    case 'irfs'              % Plot IRFs
        option2=get(hObject,'Value');
    case 'acfs'              % Plot ACFs
        option1=get(hObject,'Value');
    case 'unconvar'          % Show the unconditonal variance in the matlab console
        option5=get(hObject,'Value');
end


% --- Executes when selected object is changed in uipanel16.
function uipanel16_SelectionChangeFcn(hObject, eventdata, handles)
global option2;
global option6;
global shocks;
option2=get(hObject,'Value');
set(handles.irfs, 'Value', get(hObject,'Value'))
switch get(hObject,'Tag')
    case 'moposh'            % Monetary Policy Shock
        shocks(1) = get(hObject,'Value');
        if get(hObject,'Value') % this option precludes the choice of Model Specific Shocks
            option6 = 0;
        end
    case 'mospsh'
        option6=1;
end

%%%%%% Modify the Horizon
% The Following function is generated by Matlab and should not be modefied
function ho_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%%%%%% Set the Horizon
function ho_Callback(hObject, eventdata, handles)
global  horizon;
h=str2double(get(hObject,'String'));
if (~isempty(h)&&~isnan(h))
    horizon=h*(h<101)+20*(h>100);
else horizon=20;set(hObject,'string',horizon);
end

%%%%%% pdf file for model description
function infomodels_Callback(hObject, eventdata, handles)

open('MMB_model_description.pdf')


%%%%%% pdf file for rule description
function inforules_Callback(hObject, eventdata, handles)

open('MMB_MPrule_description.pdf')


%%%%%% Specified the Output file
% The Following function is generated by Matlab and should not be modefied
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%%%%%% Specified the Name of the Output File
function edit1_Callback(hObject, eventdata, handles)
global results;
results= [get(hObject,'String') '.xls'];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% Load Previous Settings, Continue and Back Buttons %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% Load Previous Settings
function loprse_Callback(hObject, eventdata, handles)
load('Modelbase.mat') % Data on the Previous are saved in the structure 'Modelbase.mat'
global option1 option2 option3 option4 option5 option6 data shocks rule modelsvec exercise ruleslist modelslist model_with_rule horizon AL_Models
exercise=modelbase.exercise;
if exercise==2 %%%%%% We recover last plot options and shocks
    option1=modelbase.option(1);option2=modelbase.option(2);option3=modelbase.option(3);
    option4=modelbase.option(4);option5=modelbase.option(5);option6=modelbase.option(6);rule(find(modelbase.rule>0))=1;
    shocks=modelbase.shocks;data=modelbase.data; horizon = modelbase.horizon;
    
    %%%%%%%%%% Load the previous options.
    if option1
        set(handles.acfs,'Value',1)
    else set(handles.acfs,'Value',0);
    end
    
    if option2
        set(handles.irfs,'Value',1)
    else set(handles.irfs,'Value',0);
    end
    if option5
        set(handles.unconvar, 'Value',1);
    else set(handles.unconvar, 'Value',0);
    end
    if ~option6
        if shocks(1)
            set(handles.moposh, 'Value',1);
        end
        if shocks(2)
            set(handles.moposh, 'Value',1);
        end
    else set(handles.mospsh, 'Value',1);
    end
    
    %%%%%%%%%% Load the previous rules chosen.
    if rule(2)>0
        set(handles.mospporu, 'Enable','on');
    end
    checkall(ruleslist(find(rule>0)),1);
    if rule(1)>0
        USERRULE
        waitfor(USERRULE);
        if isempty(find(data(~isnan(data))~=0))
            set(handles.user,'Value',0);
        end
    end
  
    if max(size(find(rule>0))) == (max(size(rule))-2+(rule(2)>0))
        set(handles.allavailablerules,'Value',1);
    end
    
    %%%%%%%%%% Load the previous model chosen.
    i=1:max(size(modelsvec));
    modelsvec(i)=0;
    modelsvec(modelbase.models)=1;
    set(modelslist(modelbase.models), 'Value',1);
      if max(modelsvec(AL_Models)) 
        checkall(handles.allalmodels,1);
        OPT2MENU_AL
        %waitfor(OPT2MENU_AL);
            set(handles.orpwie08, 'Enable','off');
    end
    if ~isempty(find(model_with_rule==modelbase.models))
        set(handles.mospporu, 'Enable','on');
    else
        set(handles.mospporu, 'Enable','off');
        set(handles.mospporu, 'Value',0);
        rule(2)=0;
    end
    set(handles.ho, 'String', horizon)
else disp('No previous setting is available.')
end
clear Modelbase.mat

%%%%%%% This function gives all handles whose tags are in arraytag the value 'val'
function checkall(arraytag,val)
set(arraytag, 'Value', val);

%%%%%%% This function in all handles whose tags are in arraytag the status 'Enable' to the value 'val'
function enablekall(arraytag,val)
set(arraytag, 'Enable', val);
%%%%%% Callback for the Continue Button.
function togglebutton1_Callback(hObject, eventdata, handles)
global modelsvec shocks rule option6 option1 option2 option5 figure_handle
try
    delete(figure_handle) % Close the GUI OPT2MENU_AL
catch
end
if isempty(find(modelsvec>0))
    disp('Please choose a model.')
elseif isempty(find(rule>0))
    disp('Please choose monetary policy rules.')
elseif (option1==0&&option2==0&&option5==0)
    disp('Please choose options for an exercise.')
else
    close(gcbf)  % Close the GUI OPT2MENU
    MMBOPT2      % Run the file MMBOPT2.m
end


%%%%%% Back to the main Menu
function back_Callback(hObject, eventdata, handles)
cd ..
MMB
global figure_handle;
try
    delte(figure_handle) % Close the GUI OPT2MENU_AL
catch
end
close(gcbf)


% % --- Executes during object creation, after setting all properties.
function text8_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to text8 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
%
%
% % --- Executes when figure1 is resized.