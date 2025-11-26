#cat() : concatenation des matrices
function CanauxRouge(axes1)
   img = im2uint8(recupererImage(axes1));
   if isempty(img)
     msgbox("Veuillez d'abord ajouter une image");
   else
     R = img(:,:,1);

     #isolation des canaux
       #==>Rouge
         img_rouge_isole = cat(3,R,zeros(size(R),'uint8'),zeros(size(R),'uint8'));
         imshow(img_rouge_isole,'parent',axes1);
   endif
endfunction
