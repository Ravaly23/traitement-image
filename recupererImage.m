#fonction qui recupere une image d'un axes
function im = recupererImage(ax)
     #recherchée un objet de type image dans l'axe
     imgS = findobj(ax,'type','image');
     im = get(imgS,'CData');
endfunction
