#fonction qui sert à afficher l'histogramme d'une image
function histogramme(axes1)
   img = recupererImage(axes1);
   if isempty(img)
     msgbox("Veuillez d'abord ajouter une image");
   else
     imhist(img);
   endif
endfunction
