#fonction qui affiche le bouton de rotation , redimensionnement
function Style(btnGroupe,dim,ax1,txtLargeur,txtHauteur)
  if isempty(recupererImage(ax1))
      msgbox("Veuillez d'abord faire un traitements d'une image");
  else
    etatBtn = get(btnGroupe,"visible");
    etatDim = get(dim,"visible");
    if isequal(etatBtn,'off') && isequal(etatDim,'off')
      set(btnGroupe,'visible','on');
      set(dim,'visible','on');
      largeurImg = size(recupererImage(ax1),2);
      hauteurImg = size(recupererImage(ax1),1);
      txtL = num2str(largeurImg);
      txtH = num2str(hauteurImg);
      set(txtHauteur,'string',txtH);
      set(txtLargeur,'string',txtL);
    else
      set(btnGroupe,'visible','off');
      set(dim,'visible','off');
    endif
  endif
endfunction
