hf=figure;
ha=axes('CameraPosition', [10 12 5]);
[x,y]=meshgrid(-2:0.5:2);
z=zeros(size(x)).*zeros(size(y));
hs=surface('XData', x, 'YData', y, 'ZData', z, 'FaceColor' , 'y', 'EdgeColor', 'r', 'FaceAlpha', 0.8, 'EdgeAlpha', 0.8) 
v=[-1 0 0
0 1 0
1 0 0
0 -1 0
0 0 1];
f=[1 2 3 4
5 4 1 NaN
2 1 5 NaN
3 2 5 NaN
4 3 5 NaN];
hp=patch('Vertices', v, 'Faces', f, 'FaceColor', 'g', 'EdgeColor', 'r', 'FaceAlpha', 0.8, 'EdgeAlpha', 0.8);
hgr=hgtransform('Parent', ha);
hgt=hgtransform('Parent', ha);
set(hs, 'Parent', hgt)
set(hp, 'Parent', hgt)
hgto=copyobj(hgt, ha);
hco=get(hgto, 'Children')
set(hco, 'FaceAlpha', 0.1, 'EdgeAlpha', 0.1)
tz=makehgtform('Translate', [0 0 2])
set(hgt, 'Matrix', tz)
ty=makehgtform('translate', [0 1 0])
set(hgt, 'Matrix', ty)
t=ty*tz;
set(hgt, 'Matrix', t);
tx1=makehgtform('translate', [2 0 0])
ry=makehgtform('yrotate', pi/2);
tx2=makehgtform('translate', [-2 0 0]);
t=tx2*ry*tx1;
set(hgt, 'Matrix', t)