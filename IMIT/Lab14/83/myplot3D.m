function myplot3D(xmin, xmax, ymin, ymax, vis);
if nargin=5
    error('задайте xmin, xmax, ymin, ymax, vis')
end
if nargout>0
    error('нету вход элементов')
end
M=max([size(xmin) size(xmax) size(ymin) size(ymax) size(vis)]);
