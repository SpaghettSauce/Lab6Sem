try
    a=load('my.dat');
    pie(a)
catch
    disp('Не могу найти my.dat')
end
x=[1 2 -1 -2];
x=x.^2
lasterr