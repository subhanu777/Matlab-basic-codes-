function fun7=func_eulerr(x0,xf,y0,n)
x=zeros(n+1,1);
y=zeros(n+1,1);
z=zeros(n+1,1);
x(1)=x0;
y(1)=y0;
z(1)=exp(x(1));
h=(xf-x0)/n;
for i=2:1:n+1
    x(i)=x(i-1)+h;
    y(i)=y(i-1)+h*dydx(x(i-1),y(i-1));
    z(i)=exp(x(i));
end
plot(x,y);
hold on;
plot(x,z);
fun7=y(n+1);