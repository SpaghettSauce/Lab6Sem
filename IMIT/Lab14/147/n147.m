f=sym(1/(1+x));
tf=taylor(f);
pretty(tf)
syms y
g=sym(1/(x+y));
tr=taylor(g, 7, y);
pretty(tr)
pretty(taylor(exp(x), 4, x, 1/2))
taylortool
syms k
s=symsum((-1)^k/k^2, k, 1, Inf)
syms k x
s=symsum((-1)^(k)*x^(2*k+1)/sym((2*k+1)!), k, 0, Inf)
syms a x
limit((1+1/x)^(x*a), x, Inf)
syms b x
limit((10+x)^(1/x), x, 0, 'left')
limit((10+x)^(1/x), x, 0, 'right')
limit((10+x)^(1/x), x, 0)
syms h x
L=limit((atan(x+h)-atan(x))/h, h, 0);
pretty(L)
P=diff(atan(x), x, 1);
pretty(P)