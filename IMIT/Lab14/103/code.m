t=0:0.1:7;
x=sin(t);
y=cos(t);
figure
axes('XGrid', 'on', 'NextPlot', 'add')
plot(t, x, 'Color', 'k', 'LineWidth', 3)
plot(t, y, 'Color', 'k', 'Marker', 'o', 'MarkerFaceColor', 'w', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'k');
