function ulitka2(a, b)
h=pi/20;
t=0:h:2*pi;
x=a*cos(t).*cos(t)+b*cos(t);
y=a*cos(t).*sin(t)+b*sin(t);
R=[X, Y];
pp=csapi(t, R);
figure
fnplt(pp)
axis equal