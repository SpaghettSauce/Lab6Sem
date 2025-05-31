syms x a b
whos
f=(sin(x)+a)^2*(cos(x)+b)^2/sqrt(abs(a+b))
pretty(f)
syms y
g=(exp(-y)+1)/exp(y)
h=f*g
pretty(h)
z=sym('c^2/(d+1)')
pretty(z)
syms a b real
p=conj(a+i*b)
syms a b unreal
q=conj(a+i*b)
plus.m
syms a b c d e f g h
A=[a b; c d]
B=[e, f; g, h]
C=A*B
F=A.*b
D=[C A; B C]
d2=D(2, :)
d=d2([1 3 4])
D(1:2, :)=[]