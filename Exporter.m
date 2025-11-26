#enregistrement des resultats
function Exporter(axes)
   if isempty(recupererImage(axes))
     msgbox("Il n'y a aucun résultat à exporter!");
   else
     imgExport = recupererImage(axes);
     [file,path] = uiputfile({"*.png;*.jpg;*.jpeg","Formats supportée"});
     if isequal(file,0)
       return ;
     endif
        imwrite(imgExport,fullfile(path,file),"png");
        msgbox("Résultat exporté avec succès");
   endif
endfunction
