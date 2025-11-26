function Prewitt(axes)
   if isempty(recupererImage(axes))
     msgbox('Veuillez importer une image');
   else
     img = recupererImage(axes);
     filtre_prewitt = edge(rgb2gray(img), 'prewitt');
     imshow(filtre_prewitt,'parent',axes);
   endif
endfunction
