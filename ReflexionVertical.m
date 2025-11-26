function ReflexionVertical(axes)
  if isempty(recupererImage(axes))
    msgbox('Veuillez importer une image');
  else
    img = recupererImage(axes);
    refVerti = flipud(img);
    imshow(refVerti,'Parent',axes);
  endif
end
