function F=larges(x)
n=lenght(x);
F=rand(n, 1);
F(1)=2*x(1)^2-x(2)-1;
for i=2:n-1
    F(i)=-(i-1)+2*x(i)^2-x(i+1)-1;
end
F(n)=-x(n-1)+2*x(n)^2-1