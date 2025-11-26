function ReflexionHorizontal(axes)
  if isempty(recupererImage(axes))
    msgbox('Veuillez importer une image');
  else
    img = recupererImage(axes);
    refHoriz = fliplr(img);
    imshow(refHoriz,'Parent',axes);
  endif
end
