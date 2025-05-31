p=sym((x+a)^4+(x-1)^3-(x-a)^2-a*x+x-3);
pretty(p)
pc=collect(p);
pretty(pc)
pca=collect(p, 'a');
pretty(pca)
pe=expand(p);
pretty(pe)
f=sym(sin(acos(3*x))+exp(2*log(x)));
fe=expand(f);
pretty(fe)
p=sym(x^5+13*x^4+215/4*x^3+275/4*x^2-27/2*x-18);
pf=factor(p)
pretty(pf)
syms a
a=sym('230010')'
s=factor(a)
s1=factor(230010)
