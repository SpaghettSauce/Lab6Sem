%a=sym('[a b c; d e f; g h j]');
%D=det(a)
%AI=inv(a)
%pretty(AI)
%pA=poly(a);
%pretty(pA);
%--------------%
%profile on -detail builtin
%AS=sym(hild(15));
%vs=eig(AS)
%A=hilb(15);
%v=eig(A)
%profie report
%--------------%
syms a b c x y
N=a+b*x+c*y;
M=sym('[1 x1 y1; 1 x2 y2; 1 x3 y3]');
r=sym('[1; 0; 0]');
v=M\r;
N1=subs(N, a, v(1));
N1=subs(N1, b, v(2));
N1=subs(N1, c, v(3));
N1=simplify(N1);
pretty(N1);
ccode(N1)
r=sym('[0; 1; 0]');
v=M\r;
N2=subs(N, a, v(1));
N2=subs(N2, b, v(2));
N2=subs(N2, c, v(3));
N2=simplify(N2);
pretty(N2);
ccode(N2)
r=sym('[0; 0; 1]');
v=M\r;
N3=subs(N, a, v(1));
N3=subs(N3, b, v(2));
N3=subs(N3, c, v(3));
N3=simplify(N3);
pretty(N3);
ccode(N3)