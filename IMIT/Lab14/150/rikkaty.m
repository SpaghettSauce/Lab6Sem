function F=rikkaty(x,y)
F=[1/x^2-y(1)^2];
%y=dsolve('Dy+y^2=x^2(-2)', 'y(0.5)=-1', 'x');
%pretty(y)
%[X, Y]=ode45('rikkaty', [0.5 7], -1);
%ezplot(y)
%y=dsolve(Dy+y^2=x^2(-2), y(0.5)=-1, x);
%hold on
%plot(X, Y, 'o')
%grid on
%[f, g]=dsolve('Df=exp(-g)', 'Dg=exp(-f)');
%pretty(f)
%pretty(g)
%syms t
%u1=diff(f, t)-exp(-g);
%u2=diff(g, t)-exp(-f)
%simplify(u2)
%[f, g]=dsolve('Df=exp(-g)', 'Dg=exp(-f)', 'Df(5)=1', 'Dg(5)=3');
%[f, g]=dsolve('Df=exp(-g), Dg=exp(-f)', 'Df(5)=1, Dg(5)=3');
%y=dsolve('(1-x^2)*D2y-2*x*Dy+n*(n-1)*y=0', 'x')
%mfun('LegendreP', 5, 0.7)