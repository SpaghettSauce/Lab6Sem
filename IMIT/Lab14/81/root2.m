function [x1, x2] = root2(a, b, c)
d=b^2-4*a*c;
if d<0
    error('ком корни')
end
x1=(-b+sqrt(d))/2;
x2=(-b-sqrt(d))/2;