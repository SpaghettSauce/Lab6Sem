x=0:0.1:10;
y=sin(x);
plot(x, y)
fn=get(gca, 'FontName')
set(gca, 'LineWidth', 2)
set(gca, 'YTick', [-1 0 1])
set(gca, 'Xgrid', 'on')
set(gca, 'GridLine', '-')
set(gca, 'Color', [0.8 0.8 0.8])
set(gco, 'Color', 'k')
set(gco, 'LineWidth', 2)
set(gco, 'Marker', 'o')
set(gco, 'MarkerFaceColor', 'w')
set(gco, 'Markersize', 8)