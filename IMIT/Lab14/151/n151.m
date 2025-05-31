x=-1:0.2:1;
fun=inline('exp(-x.^2)');
y=fun(x);
s=csapi(x, y)
fnplt(s)
Y=fnval(s, [0.1 0.2])
s2=fnder(s, 2);
S=fnint(s);
I=fnval(S, x(end))-fnval(S, x(1))
quadl(fun, x(1), x(end))
[mval, mx]=fnmin(s,[-1 0.5])
subplot(2, 1, 1)
x=-1:0.05:1;
y=fun(x);
plot(x, y, 'rp')
hold on
fnplt(s)
title('графики функции и сплайна')
title('figure')
legend('function', 'spline')
xe=-1:0.01:1;
ye=abs(fnval(s, xe)-fun(xe));
subplot(2, 1, 2)
plot(xe, ye)
title('Erorr figure')
x1=-0.9:0.2:0.9;
value=csapi(x, y, x1);