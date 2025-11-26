function Luminosite(ax1,ax2,slider)
   if isempty(recupererImage(ax1))
     msgbox('Veuillez importer une image!!');
   else
     alpha = get(slider,'value');
     img = im2double(recupererImage(ax1));
     img_luminosite = img + alpha;
     img_luminosite = max(min(img_luminosite,1),0);
     img_luminosite = im2uint8(img_luminosite);
     imshow(img_luminosite,'parent',ax2);
   endif
endfunction
