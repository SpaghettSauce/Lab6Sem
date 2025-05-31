A=[1.3 -2.1 4.9
6.9 3.7 8.5];
B=sym(A)
c=[3.2; 0.4; -2.1];
d=sym(c)
format long e
large=sym(1.0e10);
small=sym(1.0e-10);
s=large+small
c=sym(sqrt(2));
cn=vpa(c)
cn=vpa(c, 70)
whos cn
cnum=double(cn)
f=sym(x^2*sin(x));
ezplot(f)
ezplot(f, [-3 2])
z=sym(x^2+y^3);
ezplot(z, [-2 1 -3 4])
ezsurf('asin(x^y)', [0 6 -7 7])