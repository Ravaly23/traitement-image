function UserInterface()
  #fenetre de l'application
  fen = figure('name',"Projet Octave - Ravaly's dev",'color',"#2B2B2B",
  'position',[100,25,800,600],
  'numbertitle','off','menubar','none','Units','Normalized');

  #axe des images non-traitée
  imgNonTraitee = axes('parent', fen,
  'position', [0.05 0.5 0.4 0.4],'color','#2D2D2D',
  'xcolor','#FFFFFF','ycolor','#FFFFFF');

  #axe des images traitée
  imgTraitees = axes('parent', fen,
  'position', [0.55 0.5 0.4 0.4],'color','#2D2D2D',
  'xcolor','#FFFFFF','ycolor','#FFFFFF');


  #barre de menu nommée fichier
   menufile = uimenu(fen,'label','fichier');
    #==>les sous menus de menufile

     #menu qui sert à charger l'image
     menuChargerImg = uimenu(menufile,'label','Charger une image','accelerator','i',
     'callback',@(event,src) ChargerImage(imgNonTraitee,imgTraitees));

     #menu qui sert à exporter les resultats
     menuExporter = uimenu(menufile,'label','Exporter le resultat','accelerator','s',
     'callback',@(event,src) Exporter(imgTraitees));

     #menu quittez
     menuQuitter = uimenu(menufile,'label','Quittez','accelerator','q',
     'callback',@(event,src) close(fen));

  #barre de menu nommée traitement
  menutraitement = uimenu(fen,'label','traitement');
      #==>les sous menus de menutraitement
       #image original
       original =  menuRouges = uimenu(menutraitement,'label','originel',
       'callback',@(src,event) Choix("originel",imgNonTraitee,imgTraitees));

       #canaux rouges
       menuRouges = uimenu(menutraitement,'label','Canaux rouges',
       'callback',@(src,event) Choix("Canaux rouges",imgNonTraitee,imgTraitees));

       #canaux bleu
       menuRouges = uimenu(menutraitement,'label','Canaux bleu',
       'callback',@(src,event) Choix("Canaux bleu",imgNonTraitee,imgTraitees));

       #canaux vert
       menuRouges = uimenu(menutraitement,'label','Canaux vert',
       'callback',@(src,event) Choix("Canaux vert",imgNonTraitee,imgTraitees));

       #histogramme d'une image
       menuHisto = uimenu(menutraitement,'label','Histogramme',
       'callback',@(src,event) Choix("Histogramme",imgNonTraitee,imgTraitees));

       #niveau de gris
       menuGris = uimenu(menutraitement,'label','Niveau de gris',
       'callback',@(src,event) Choix("Niveau de gris",imgNonTraitee,imgTraitees));

       #inverser
       menuInverser = uimenu(menutraitement,'label',"Negatif d'image",
       'callback',@(src,event) Choix("Inverser",imgNonTraitee,imgTraitees));

       #rogner
       menuRogner = uimenu(menutraitement,'label',"Rogner",
       'callback',@(src,event) Rognage(imgTraitees));

   #btn reflexion horizontal et vertical
   refHorizontal = uicontrol('Parent',fen,'style','pushbutton','string','reflexion horizontal','Units','Normalized',
      'position',[0.68 0.4 0.2 0.05],'foregroundcolor','#FFFFFF','backgroundcolor','#2D2D2D','callback',@(src,event) ReflexionHorizontal(imgTraitees));
   refVertical = uicontrol('Parent',fen,'style','pushbutton','string','reflexion vertical','Units','Normalized',
      'position',[0.15 0.4 0.15 0.05],'foregroundcolor','#FFFFFF','backgroundcolor','#2D2D2D',
      'callback',@(src,event) ReflexionVertical(imgTraitees));

   #panel contenant des fonctionnalitées
     panel = uipanel('Parent',fen,'position',[0 0 1 0.3],'title',"fonctionnalitée",
     "backgroundcolor","#2D2D2D",'Units','Normalized','foregroundcolor','#FFFFFF',
     'shadowcolor','#202020');


   #les informations concernant les dimension de l'image
   panelDim = uipanel(panel,'position',[0.48 0.3 0.5 0.5],
      'Units','Normalized','title','Dimension de l''image','backgroundcolor','#808080',
      'bordertype','none','foregroundcolor','#FFFFFF','visible','off');

      #width :largeur
      largeurTxt =uicontrol(panelDim,'style','text','string','Largeur','Units','Normalized',
      'position',[0.020 0.4 0.3 0.3],'foregroundcolor','#2D2D2D',
      'backgroundcolor','#808080');

      widthImg = uicontrol(panelDim,'style','edit','string','','Units','Normalized',
      'position',[0.020 0.1 0.3 0.3],'foregroundcolor','#808080');

      #heigh :hauteur
      hauteurTxt =uicontrol(panelDim,'style','text','string','Hauteur','Units','Normalized',
      'position',[0.35 0.4 0.3 0.3],'foregroundcolor','#2D2D2D',
      'backgroundcolor','#808080');

      heighImg = uicontrol(panelDim,'style','edit','string','','Units','Normalized',
      'position',[0.35 0.1 0.3 0.3],'foregroundcolor','#808080');

      #bouton redimensionner
      btnDim = uicontrol(panelDim,'style','pushbutton','string','Redimensionner','Units','Normalized',
      'position',[0.68 0.1 0.3 0.3],'foregroundcolor','#FFFFFF','backgroundcolor','#2D2D2D',
      'callback',@(src,event) Redimensionner(widthImg,heighImg,imgTraitees));

      #les boutons générés en appuyant sur le menu  menuTransformation
      rotation = uibuttongroup(panel,'position',[0.1 0.4 0.15 0.4],
        'Units','Normalized','title','Rotation','backgroundcolor','#808080',
         'bordertype','none','foregroundcolor','#FFFFFF','visible','off');


      rotateGauche = uicontrol(rotation,'style','pushbutton','Units','Normalized',
       'position',[0.1 0.2 0.3 0.5],'Units','Normalized','string','<',
       'callback',@(src,event) RotationGauche(imgTraitees,widthImg,heighImg));

      rotateDroite = uicontrol(rotation,'style','pushbutton','Units','Normalized',
       'position',[0.59 0.2 0.3 0.5],'Units','Normalized','string','>',
       'callback',@(src,event) RotationDroite(imgTraitees,widthImg,heighImg));

   #menu nommée Transformation elementaire
    menuTransformation = uimenu(fen,'label',"Transformation");

       menuTransformationE = uimenu(menuTransformation,'label',"Transformation elementaire",
        'callback',@(src,event) Style(rotation,panelDim,imgTraitees,widthImg,heighImg));



    #les boutons générés en appuyant sur le menu  Contraste et Intensité
      ContrasteIntensite = uipanel(panel,'position',[0.1 0.2 0.5 0.6],
        'Units','Normalized','title','Contraste et Intensité','backgroundcolor','#808080',
         'bordertype','none','foregroundcolor','#FFFFFF','visible','off');

    menuContraste =  uimenu(menuTransformation,'label',"Contraste et Intensité",
    'callback',@(src,event) AfficheBtnContraste(ContrasteIntensite,imgTraitees));

       #curseur
       textC = uicontrol(ContrasteIntensite,'style','text','string','Contraste',
       'Units','Normalized','position',[0.15 0.5 0.2 0.2],'backgroundcolor','#808080');
       contrasteSlider = uicontrol(ContrasteIntensite,'style','slider','min',0,'max',2,
          'value',1,'Units','Normalized','position',[0.1 0.2 0.3 0.2]);

       set(contrasteSlider,'callback',{@(src,event) Contraste(imgNonTraitee,imgTraitees,src)});

       textI = uicontrol(ContrasteIntensite,'style','text','string','Intensité',
       'Units','Normalized','position',[0.55 0.5 0.2 0.2],'backgroundcolor','#808080');
       intensiteSlider = uicontrol(ContrasteIntensite,'style','slider','min',0,'max',1,
          'value',0.5,'Units','Normalized','position',[0.5 0.2 0.3 0.2],
          'callback',@(src,event) Luminosite(imgNonTraitee,imgTraitees,src));


      #menu filtrage
      menuFiltrage = uimenu(fen,'label',"Filtrage");
         #sous menu
         menuDetectionContour = uimenu(menuFiltrage,'label',"Détéction des contours");

           #sobel
           menuSobel = uimenu(menuDetectionContour,'label',"Sobel",
           'callback',@(src,event) Sobel(imgTraitees));

           #prewitt
           menuPrewitt = uimenu(menuDetectionContour,'label',"Prewitt",
           'callback',@(src,event) Prewitt(imgTraitees));

           #laplacien
           menuCanny =uimenu(menuDetectionContour,'label',"Canny",
           'callback',@(src,event) Canny(imgTraitees));

         menuLissage = uimenu(menuFiltrage,'label',"Lissage",
         'callback',@(src,event) Lissage(imgTraitees));

         menuTransformerFourier = uimenu(menuFiltrage,'label',"Fourier",
         'callback',@(src,event) Fourier(imgNonTraitee,imgTraitees));

endfunction



