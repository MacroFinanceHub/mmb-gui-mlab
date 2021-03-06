function [selstates] = menu_AL_select_subset(states)
% Callback for pushbutton.
 global selstates states2 length;
    states2=states;
    length=size(states,2);
    
    
    S2.fg=figure('units','pixels',...
              'menubar','none',...
              'position',[300 200 120 length*30+80],...
              'name','',...
              'numbertitle','off',...
              'resize','off');
    S2.t1 = uicontrol('style','text',...
                 'unit','pix',...
                 'position',[10 length*30+40 100 30],...
                 'string','Select states to be included in AL');
    for i=1:length
        S2.r(i)= uicontrol('style','rad',...
                            'unit','pix',...
                            'position',[10 (length-i)*30+40 100 20],...
                            'string',states(1,i));
    end
    S2.pb = uicontrol('style','push',...
                 'unit','pix',...
                 'position',[10 10 100 20],...
                 'string','OK', ...
                 'callback', {@funeval_states_subset,S2});
uiwait;
end