%function tangent(funstr, X0)
%syms x
%f=syms(funstr);
%Y0=subs(f, 'x', X0)
%A=X0-1;
%B=X0+1;
%X=[A:(B-A)/100:B];
%F=subs(f, 'x', X);
%Hline=plot(X, F);
%set(Hline, 'LineWidth', 2)
%k=diff(f, x, 1);
%K=subs(k, 'x', X0)
%yt=sum('y+k*(x-x0)');
%yt=subs(yt, 'k', K);
%yt=subs(yt, 'x0', X0);
%yt=subs(yt, 'y0', Y0);
%hold on
%ezplot(yt, [A B])
%plot(X0, Y0, 'o')
%grid on
%hold off
syms x
f=sym(x^3*exp(x));
I=int(f, x)
pretty(I)
diff(I, x, 1)
syms x
f=sym(exp(sin(x)^2)*cos(x));
I=int(f, x);
pretty(I)
syms x a b
f=sym((x^3+1)/(x-1));
I=int(f, x, a, b);
pretty(I)
f=sym(y*sin(x));
Ix=int(f, x, a, b)
Iy=int(Ix, y, c, d)
pretty(Iy)