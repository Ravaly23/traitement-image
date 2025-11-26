#fonction qui sert à inverser des couleurs de l'image(negatif d'image)
function NegatifImage(axes1)
  img = recupererImage(axes1);
  inverse = 255 - img;
  imshow(inverse,'parent',axes1);
endfunction
