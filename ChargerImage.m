#fonction qui sert à charger l'image
function ChargerImage(ax,ax2)
  global imgTraitee;
  [filename, pathname]  = uigetfile({'*.jpg;*.png;*.jpeg','Formats supportée'}, 'Choisir une image');
   if isequal(filename, 0)
      return;
   end
    img = im2uint8(imread(fullfile(pathname, filename)));
    imshow(img, 'Parent', ax);
    imgTraitee = imshow(img, 'Parent', ax2);
endfunction
