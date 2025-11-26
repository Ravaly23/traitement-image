function Rognage(axes)
   img = recupererImage(axes);
   if isempty(img)
     msgbox('Veuillez importer une image');
   else
     imgRogner = imcrop(img);
     imshow(imgRogner,'parent',axes);
   endif
endfunction
