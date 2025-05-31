p=sym('(x+a)^4+(x-1)^3-(x-a)^2-a*x+x-3');
pretty(p)
pc=collect(p);
pretty(pc)
pca=collect(p, 'a');
pretty(pca)
pe=expand(p);
pretty(pe)
f=sym('sin(arcos(3*x))+exp(2*log(x))');
fe=expand(f);
pretty(fe)
p=sym('x^5+13*x^4+215/4*x^3+275/4*x^2-27/2*x-18');
pf=factor(p)
pretty(pf)
syms a
a=sym('230010')'
s=factor(a)
s1=factor(230010)
f=sym('(a^2+b^2)/(a^2-b^2)+a^4/b^4');
f=subs(f, 'a', '(exp(x)+exp(-x))');
f=subs(f, 'b', '(sin(x)+cos(x))');
pretty(f)
f=sym('(a^2+b^2)/(a^2-b^2)+a^4/b^4');
f=subs(f, {'a', 'b'}, {'(exp(x)+exp(-x))', '(sin(x)+cos(x))'});
pretty(f)
f=sym('exp(x^3+2*x^2+x+5)');
q=subs(f, 'x', 1.1)
vpa(q, 50)
