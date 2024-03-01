
function project_2(beta,Ro,Ri,gm,rbe,Av,Ai,RB1,RB2,VAl,RC,RE,IC,VCE,A,f,N,tip)
VBE=0.7;
VTh=(RB2/(RB1+RB2))*VAl;
    RTh=(RB1.*RB2)./(RB1+RB2);
    IC=beta*((VTh-VBE)/(RTh+(beta+1)*RE));
    VCE=VAl-IC*(RC+RE);
    Ro=RC;
    gm=40.*IC;
    rBE=beta./gm;
    Ri=RTh*rBE/RTh+rBE;
    Av=gm*RC;
    Ai=1;

figure('Name','Laborator Grafica',...
    'Units','normalized',...
    'Position',[0.02 0.4 0.4 0.6],...
    'NumberTitle','off','color',[0.3010 0.7450 0.9330]);




uibuttongroup('Visible','on',...
 'BackgroundColor',[0.75,0.75,0.75],...
'ForegroundColor','black',...
 'Title','Introduceti valorile:',...
 'FontSize',10,...
'TitlePosition','centertop',...
 'Tag','radiobutton',...
 'Position',[0.02 0.7 0.57 0.2]);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.42 0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','BETA');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.42 0.79 0.07 0.05],...
    'String',beta,...
    'Callback',['beta=','str2num(get(gco,''String''))']);



uibuttongroup('Visible','on',...
            'Fontname', 'Times New Roman',...
            'Fontsize', 12,...
            'backgroundcolor', [0.75,0.75,0.75],...
            'Title','Parametrii de semnal',...
            'TitlePosition','centertop',...
            'Tag','radiobutton',...
            'Position',[0.65 0.7 0.3 0.2]);

subplot('Position',[0.55 0.15 0.4 0.4]);
w=imread('Screenshot(63).png');
image(w);
axis off;
title('circuit echivalent thevenin');

subplot('Position',[0.05 0.15 0.4 0.4]);
c=imread('Screenshot(61).png');
image(c);
axis off;
title('schema electrica')



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.7 0.78 0.05 0.05], ...
         'String','Ri',...
           'backgroundcolor',[0.75,0.75,0.75]);




 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.76 0.83 0.07 0.035], ...
         'String',Ro);

  uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.76 0.78 0.05 0.05], ...
         'String','Ro',...
           'backgroundcolor',[0.75,0.75,0.75]);

uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.68 0.83 0.07 0.0355], ...
         'String',Ri);
           

 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.68 0.78 0.05 0.05], ...
         'String','Ri',...
           'backgroundcolor',[0.75,0.75,0.75]);


 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.84 0.83 0.07 0.035], ...
         'String',gm );
           



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.84 0.78 0.05 0.05], ...
         'String','gm' ,...
           'backgroundcolor',[0.75,0.75,0.75]);



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.84 0.75 0.07 0.035], ...
         'String',rBE);
           



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.84 0.70 0.05 0.05], ...
         'String','rBE' ,...
           'backgroundcolor',[0.75,0.75,0.75]);

uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.76 0.75 0.07 0.035], ...
         'String',Av);
           



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.76 0.70 0.05 0.05], ...
         'String','Av' ,...
           'backgroundcolor',[0.75,0.75,0.75]);



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.68 0.75 0.07 0.035], ...
         'String',Ai );
           



 uicontrol('Style','text' ,...
       'Units','normalized' ,...
         'Position',[0.68 0.70 0.05 0.05], ...
         'String','Ai' ,...
           'backgroundcolor',[0.75,0.75,0.75]);


uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.1 0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','RB1[ohmi]');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.1 0.79 0.07 0.05],...
    'String',RB1,...
    'Callback',['RB1=','str2num(get(gco,''String''))']);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.18 0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','RB2[ohmi]');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.18 0.79 0.07 0.05],...
    'String',RB2,...
    'Callback',['RB2=','str2num(get(gco,''String''))']);


uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.26 0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','VAl');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.26 0.79 0.07 0.05],...
    'String',VAl,...
    'Callback',['VAl=','str2num(get(gco,''String''))']);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.34,0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','RC[ohmi]');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.34 0.79 0.07 0.05],...
    'String',RC,...
    'Callback',['RC=','str2num(get(gco,''String''))']);


uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.5 0.79 0.07 0.05],...
    'String',RE,...
    'Callback',['RE=','str2num(get(gco,''String''))']);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.5 0.7 0.07 0.07],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','RE[ohmi]');

uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.9 0.07 0.08 .05],...
 'string','RESET',...
 'Callback','close;project_2(beta,Ro,Ri,gm,rbe,Av,Ai,RB1,RB2,VAl,RC,RE,IC,VCE,A,f,N,tip)');


figure('Name','Laborator Grafica',...
    'Units','normalized',...
    'Position',[0.8 0.4 0.4 0.6],...
    'NumberTitle','off','color',[0.3010 0.7450 0.9330]);

uibuttongroup('Visible','on',...
 'BackgroundColor',[0.75,0.75,0.75],...
'ForegroundColor','black',...
 'Title','Parametrii semnalului:',...
 'FontSize',10,...
'TitlePosition','centertop',...
 'Tag','radiobutton',...
 'Position',[0.7 0.7 0.57 0.3]);

uibuttongroup('Visible','on',...
    'Fontname', 'Times New Roman',...
            'Fontsize', 12,...
 'BackgroundColor',[0.1,0.75,0.75],...
'ForegroundColor','black',...
 'Title','Parametru static de functionare:',...
'TitlePosition','centertop',...
 'Tag','radiobutton',...
 'Position',[0.1 0.7 0.57 0.2]);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.1 0.75 0.07 0.05],...
 'backgroundcolor',[0.1,0.75,0.75],...
 'String','IC=');

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.17 0.75 0.07 0.05],...
 'String',IC);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.37 0.75 0.07 0.05],...
 'backgroundcolor',[0.1,0.75,0.75],...
 'String','VCE=');

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.44 0.75 0.07 0.05],...
 'String',VCE);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.8 0.85 0.07 0.05],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','Ampl');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.8 0.9 0.07 0.05],...
    'String',A,...
    'Callback',['A=','str2num(get(gco,''String''))']);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.72 0.85 0.07 0.05],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','F');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.72 0.9 0.07 0.05],...
    'String',f,...
    'Callback',['f=','str2num(get(gco,''String''))']);

uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.88 0.85 0.07 0.05],...
 'backgroundcolor',[0.75,0.75,0.75],...
 'String','N');

uicontrol('Style','edit',...
    'Units','normalized',...
      'Position',[0.88 0.9 0.07 0.05],...
    'String',N,...
    'Callback',['N=','str2num(get(gco,''String''))']);

uicontrol('Style','PopupMenu',...
        'Units','normalized',...
        'Fontname', 'Times New Roman',...
        'Fontsize', 12,...
        'backgroundcolor', [1 0.75 0.8],...
        'Position',[0.8 0.7 0.1 0.05],...
        'String','Sinus|Triunghi|Dinte de fierastrau',...
        'Callback','tip=get(gco, ''value'');close;project_2(beta,Ro,Ri,gm,rbe,Av,Ai,RB1,RB2,VAl,RC,RE,IC,VCE,A,f,N,tip)');  

  T=1./f;
  t=0:T/100:N*T;
  
  switch(tip)
      case 1
          vi=A.*sin(2.*pi.*f.*t);
      case 2
          vi=(2.*A./pi)*asin(sin(2.*pi.*f.*t));
      case 3
          vi=(2.*A./pi)*atan(tan(2.*pi.*f.*t./2));  
  end 
  
   vo=vi*Av;
   
     subplot('position',[0.1 0.37 0.88 0.2]);
     plot(t,vi);
     grid on;
     axis on;
     title('Tensiunea de intrare', 'color','w','fontweight','b');
     xlabel('Timp [s]','color','w','fontweight','b');
     ylabel('Amplitudine [ V ]','color','w','fontweight','b');
     
         
     subplot('position',[0.1 0.07 0.88 0.2]);
     plot(t,vo);
     grid on;
     axis on;
     title('Tensiunea de iesire', 'color','w','fontweight','b');
     xlabel('timp [s]','color','w','fontweight','b');
     ylabel('Amplitudine [ V ]','color','w','fontweight','b');

end

















