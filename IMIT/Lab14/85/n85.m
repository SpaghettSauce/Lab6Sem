y= zeros(length(x)-1)
for I=1:length(x)-1
    if x(I)==0
        break
    end
    y(I)=x(I+1)/x(I);
end