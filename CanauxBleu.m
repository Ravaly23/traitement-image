function CanauxBleu(axes1)
     img = im2uint8(recupererImage(axes1));
   if isempty(img)
     msgbox("Veuillez d'abord ajouter une image");
   else
     global imgTraitee;
     B = img(:,:,3);

     #isolation des canaux
     #==>Bleu
       img_bleu_isole = cat(3,zeros(size(B),'uint8'),zeros(size(B),'uint8'),B);
       imshow(img_bleu_isole,'parent',axes1);
   endif
endfunction
