#image originel
function originelImage(axes1,axes2)
  global imgTraitee;
  if isempty(recupererImage(axes1))
      msgbox("Veuillez d'abord ajouter une image");
  else
      img = recupererImage(axes1);
      imshow(img,'parent',axes2);
  endif
endfunction
