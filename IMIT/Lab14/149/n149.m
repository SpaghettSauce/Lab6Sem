syms x
f=sym(x^3-x^2-5*x+1);
r=solve(f, x)
simplify(subs(f, 'x', r(1)))
syms x
f=sym(a*x^4+b*x^3+c*x^2+d*x+c)
pretty(solve(f, x))
syms x1 x2
f1=sym(a*x1^2+x1*x2+1);
f2=sym(x1^2+b*x2);
s=solve(f1,f2,x1,x2);
r1=subs(f1,(x1,x2),(s.x1(1), s.x2(1)))
simlify(r1)
r2=subs(f2,(x1,x1),(s.x1(1), s.x2(1)));
r1=subs(f1,(x1,x2),(s.x1(2), s.x2(2)));
syms x1 x2
f1=sym(x1*(2-x2)-cos(x1)*exp(x2));
f2=sym(2+x1=x2-cos(x1)-exp(x2));
f2=sym(2+x1-x2-cos(x1)-exp(x2));
s.x1
s=solve(f1,f2,x1,x2);
s.x1
[x1, x2]=solve(f1,f2,x1,x2);
[x1,x2]=solve('x1*2-x2)=cos(x1*exp(x2)', '2+x1-x2=cos(x1)+exp(x2)')