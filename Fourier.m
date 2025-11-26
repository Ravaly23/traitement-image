function Fourier(ax1,ax2)
  if isempty(recupererImage(ax1))
    msgbox('Veuillez importer une image!!');
    return;
  endif
  img = recupererImage(ax1);
  if size(img,3)==3
      imgGray = rgb2gray(img);
  else
      imgGray = img;
  endif

  Fourier = fft2(double(imgGray));
  FourierShift = fftshift(Fourier);
  spectreAmplitude = log(1 + abs(FourierShift));
  imshow(spectreAmplitude,'parent',ax2,[]);
  colormap(gca,'jet');

  set(gca,'color','blue','xcolor','#FFFFFF','ycolor','#FFFFFF')
endfunction
