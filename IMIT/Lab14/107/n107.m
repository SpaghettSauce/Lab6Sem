hf=figure('MenuBar', 'none', 'Color', 'w');
hax=axes;
x=-2.0:0.01:3;
y=exp(-x.^2);
plot(x,y)
Xtext=1.17;
Ytext=exp(-Xtext.^2);
hTxt=text(Xtext, Ytext, '\leftarrow функция (\ity)=(\ite)^(-x^2)');
