 function Canny(axes)
   if isempty(recupererImage(axes))
     msgbox('Veuillez importer une image');
   else
     img = recupererImage(axes);
     filtre_canny =  edge(rgb2gray(img), 'canny');
     imshow(filtre_canny,'parent',axes);
   endif
endfunction
