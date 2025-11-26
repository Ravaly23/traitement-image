function CanauxVert(axes1)
   global imgTraitee;
   img = im2uint8(recupererImage(axes1));
   if isempty(img)
     msgbox("Veuillez d'abord ajouter une image");
   else
     G = img(:,:,2);

     #isolation des canaux
       #==>Vert
       img_vert_isole = cat(3,zeros(size(G),'uint8'),G,zeros(size(G),'uint8'));
       imshow(img_vert_isole,'parent',axes1);
   endif
endfunction
