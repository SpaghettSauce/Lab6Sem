knots=augknt([1 2 3 4 5], 4)
knots=augknt([1 2 3 4 ], 3, 2)
knots=augknt([1 2 3 4], 3, [1 2])
bspligui
xx=[-1 -0.5 -0.5 0 0.5 0.5 1];
yy=[0 0.25 1 1 0.25 -1 0];
knots=[-1 -1 -1 -0.5 0 0 0.5 1 1 1];
s=spapi(knots, xx, yy)
x=0:4;
y=x.*exp(-x.*x);
s2=spapi(3, x, y)
fnplt(s2, '-', 1)
hold on
s1=spapi(2, x, y)
fnplt(s1, '+', 2)
fnplt(fnder(s2), '-')
hold on
fnplt(fnder(s2, 2), '--')