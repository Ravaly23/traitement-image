#filtre gaussien
function Lissage(axes)
  if isempty(recupererImage(axes))
    msgbox('Veuillez importer une image');
  else
    img = recupererImage(axes);

    #filtre special gaussien
    filtre = fspecial('gaussian',[5 5],1);

    #application du filtre
    lissage_gauss = imfilter(img,filtre);
    imshow(lissage_gauss,'parent',axes);
  endif
endfunction
