u=(-pi:0.05*pi:pi)';
v=-pi:0.05*pi:pi;
x=0.3*u*cos(v);
y=0.3*u*sin(v);
z=0.6*u*ones(size(v));
hf=figure;
ha=axes;hs=surface('XData', x, 'YData', y, 'ZData', z, 'FaceColor', 'g', 'LineStyle', 'none')
set(ha, 'CameraPosition', [-15 -25 20])
hlt=light('Position', [0 -1 0])
set(ha, 'CameraPosition', [0 1 0])
set(ha, 'AmbientLightColor', 'k')
set(ha, 'AmbientLightColor', 'k')
set(ha, 'AmbientLightColor', 'k')
set(ha, 'AmbientLightColor', 'k')
set(ha, 'CameraPosition', [0 1 0])
set(ha, 'CameraPosition')
set(ha, 'CameraPosition', [-15 -25 20])
set(ha, 'AmbientLightColor', 'k')
set(ha, 'AmbientLightColor', 'w')
set(hs, 'FaceLighting', 'gouraud')
set(hs, 'LineStyle', '-')
set(hs, 'EdgeLighting', 'phong')
material metal
material Shiny
material dull
material default