function hAx=axes3(hf)
figure(hf)
hAx(1)=axes('OuterPosition', [0 0.5 0.5 0.5], 'Box', 'on');
hAx(2)=axes('OuterPosition', [0.5 0.5 0.5 0.5], 'Box', 'on');
hAx(3)=axes('OuterPosition', [0 0 0.5 0.5], 'Box', 'on');