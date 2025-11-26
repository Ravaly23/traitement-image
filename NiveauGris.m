#fonction qui convertit l'image en couleur niveau de gris
function NiveauGris(axes1)
  img = recupererImage(axes1);
  niveauGris = rgb2gray(img);
  imshow(niveauGris,'parent',axes1);
endfunction
