function Sobel(axes)
   if isempty(recupererImage(axes))
     msgbox('Veuillez importer une image');
   else
     img = recupererImage(axes);
     filtre_sobel = edge(rgb2gray(img), 'sobel');
     imshow(filtre_sobel,'parent',axes);
   endif
endfunction
