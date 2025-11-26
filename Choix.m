
#fonction regroupant tous les traitements de l'images
function Choix(ch,ax1,ax2)
  if isempty(recupererImage(ax1))
      msgbox("Veuillez d'abord ajouter une image");
  else
      if isequal(ch,"Niveau de gris")
        NiveauGris(ax2);
      elseif isequal(ch,"Inverser")
        NegatifImage(ax2);
      elseif isequal(ch,"Canaux rouges")
        CanauxRouge(ax2);
      elseif isequal(ch,'Canaux vert')
        CanauxVert(ax2);
      elseif isequal(ch,'Canaux bleu')
        CanauxBleu(ax2);
      elseif isequal(ch,'Histogramme')
        histogramme(ax2);
      elseif isequal(ch,'originel')
        originelImage(ax1,ax2);
      endif
  endif
endfunction


