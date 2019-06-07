function fun7=func_modified_euler(x0,xf,y0,n)
x=zeros(n+1,1);
y=zeros(n+1,100);
yf=zeros(n+1,1);
z=zeros(n+1,1);

x(1)=x0;
y(1)=y0;
yf(1)=y(1);


h=(xf-x0)/n;
fprintf('X\t\t\tY\n');
fprintf('%f\t\t\t%f\n',x(1),yf(1));

z(1)=exp(x(1));
for i=2:1:n+1
    x(i)=x(i-1)+h;
    y(i,1)=y(i-1,1)+h*dydx(x(i-1),y(i-1,1));
    for j=2:1:100
        y(i,j)=y(i-1,1)+(h/2)*(dydx(x(i-1),y(i-1,1))+dydx(x(i),y(i,j-1)));
        if abs(y(i,j)-y(i,j-1))<0.01
            break;
        end
    end
    y(i,1)=y(i,j);
    yf(i)=y(i,1);
    fprintf('%f\t\t\t%f\n',x(i),y(i));
    z(i)=exp(x(i));
end
plot(x,yf);
hold on;
plot(x,z);
fun7=y(n+1);