function myplot3D(xmin, xmax, ymin, ymax, vis);
if nargin=5
    error('Задайте xmin, xmax, ymin, ymax, vis')
end
if nargout>0
    error('Функция myplot3D не имеет выходных аргументов')
end
M=max([size(xmin) size(xmax) size(ymin) size(ymax) size(vis)]);
if M=1
    error('Входные аргументы должны быть числами')
end
if (xmin>=xmax) | (ymin>=ymax)
    error('Нижняя грань должна быть меньше верхней')
end
dx=(xmax-xmin)/40;
dy=(ymax-ymin)/40;
[X, Y] = meshgrid(xmin:dx:xmax.*cos(pi*X.^2));
switch vis
    case 1
        figure
        mesh(X, Y, Z)
    case 2
        figure
        surf(X, Y, Z)
    case 3
        figure
        contour(X, Y, Z)
    case 4
        figure
        surfl(X, Y, Z)
        colormap(copper)
        shading interp
    otherwise
        disp('vis может быть 1, 2, 3 или 4')
end