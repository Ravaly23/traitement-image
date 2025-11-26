function RotationGauche(axes2,txtLargeur,txtHauteur)
  if isempty(recupererImage(axes2))
      msgbox("Veuillez d'abord ajouter une image");
  else
   img = recupererImage(axes2);
   img2 = im2uint8(img);
   imgRotate = imrotate(img2,90); %tourner à 90°
   imshow(imgRotate,'parent',axes2);
   hauteurR = size(imgRotate,1);
   largeurR = size(imgRotate,2);
   txtL = num2str(largeurR);
   txtH = num2str(hauteurR);
   set(txtHauteur,'string',txtH);
   set(txtLargeur,'string',txtL);
  endif
endfunction
