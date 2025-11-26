function Contraste(ax1,ax2,slider)
  global imgTraitee;
  img =im2double(recupererImage(ax1));
  alpha = get(slider,'value');%valeur du curseur
  img_adj = im2double(img * alpha);
  imshow(img_adj,'parent',ax2);
endfunction

