hf=figure;
ha=axes('OuterPosition', [0 0 0.5 1], 'XLim', [-1.3 1.3], 'YLim', [-1.5 3.5], 'DataAspectRatio', [1 1 1])
hp=patch('XData', [-1 0 1], 'YData', [3 0 3], 'FaceColor', 'w', 'LineWidth', 4)
hr=rectangle('Position', [-0.5 -1.2 1 1], 'Curvature', [1 1], 'LineWidth', 4, 'FaceColor', 'k')
ha1=copyobj(ha, hf)
set(ha1, 'OuterPosition', [0.5 0 0.5 1])
hr1=findobj(ha1, 'Type', 'rectangle');
hp1=findobj(ha1, 'Type', 'patch');
set(hr1, 'FaceColor', 'w')
set(hp1, 'FaceColor', 'k')