#fonction qui affiche le bouton de rotation,redimensionnement
function AfficheBtnContraste(btnGroupe,ax1)
  if isempty(recupererImage(ax1))
      msgbox("Veuillez d'abord faire un traitements d'une image");
  else
    etatBtn = get(btnGroupe,"visible");
    if isequal(etatBtn,'off')
      set(btnGroupe,'visible','on');
    else
      set(btnGroupe,'visible','off');
    endif
  endif
endfunction
