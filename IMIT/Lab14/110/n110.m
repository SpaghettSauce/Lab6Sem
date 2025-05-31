hF=figure('Position', [200 200 500 500], 'MenuBar', 'none', 'NumberTitle', 'off', 'Name', 'Структура объектов Matlab', 'Color', 'w');
ha = axes('XLim', [0 100], 'YLim', [0 100], ...
              'DataAspectRatio', [1 1 1], ...
              'XTick', 0:5:100, 'YTick', 0:5:100, ...
              'XGrid', 'on', 'YGrid', 'on');
hr1=rectangle('Position', [45 80 10 10], 'Curvature', [1 1], 'LineWidth', 2);
ht1=text(50, 85, 'Root',   'FontWeight', 'bold');
hr2=rectangle('Position', [10 65 20 10], 'LineWidth', 2);
ht2=text(20, 70, 'Figure',  'FontWeight', 'bold');
hr3=rectangle('Position', [40 65 20 10], 'LineWidth', 2);
ht3=text(50, 70, 'Figure',   'FontWeight', 'bold');
hl1=line([20 50], [75 80], 'LineWidth', 2, 'Color', 'k');