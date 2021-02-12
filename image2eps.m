function image2eps (nombre)
if ischar (nombre)
    NombreImagen=nombre(1:(max(strfind(nombre,'.')))-1);
    a=imread(nombre);
else
    a=nombre;
    NombreImagen='EPS-Image';
end
close all
if size(a,3)==1
    a=repmat(a,[1,1,3]);
    imshow(a(:,:,1:3))
else 
    imshow(a(:,:,1:3))
end
saveas(gcf,NombreImagen,'epsc')
close all