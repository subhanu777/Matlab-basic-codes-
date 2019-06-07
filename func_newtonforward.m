function fun7=func_newtonforward(xf,n)
a=zeros(n+1,100);
b=zeros(n+1);
sum1=zeros(n+1,100);
for i=1:1:n
    b(i)=input('\nEnter the set of x:');
    a(1,i)=input('\nEnter the set of y:');
end
fprintf('X     |    Y\n');
for i=1:1:n
    fprintf('%.2f |%f \n',b(i),a(1,i));
end
y0=a(1,1);
fprintf('\nThe difference table is:\n');
for i=1:1:n-1
    fprintf('dely[%d]: ',i);
    for j=1:1:n-i
        a(i+1,j)=a(i,j+1)-a(i,j);
        fprintf('%f   ',a(i+1,j));
    end
    fprintf('\n');
end
u=(xf-b(1))/(b(2)-b(1));
sum2=0;
for i=1:1:n-1
    sum=1;
    for j=0:1:i-1
        sum=sum*(u-j);
    end
    sum1(i)=(sum*a(i+1,1))/factorial(i);
    sum2=sum2+sum1(i);
end
y=y0+sum2;
fprintf('\nHence for X= %.2f  value for Y=%f',xf,y);
    