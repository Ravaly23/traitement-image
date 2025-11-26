function Redimensionner(Largeur,Hauteur,ax)
    txtL = get(Largeur,'string');
    txtH = get(Hauteur,'string');
    largeurN = str2double(txtL);
    hauteurN = str2double(txtH);
    imgAncien = recupererImage(ax);
    imgRedim = imresize(imgAncien,[hauteurN,largeurN]);
    imshow(imgRedim,'parent',ax);
endfunction
