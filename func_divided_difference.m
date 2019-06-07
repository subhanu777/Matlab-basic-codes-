function fun7=func_divided_difference(xf)
n=input('\nEnter the no of points :');
x=zeros(n+1,1);
y=zeros(n+1);
yd=zeros(n+1,100);
for i=1:1:n
    x(i)=input('\nEnter the set of x:');
    y(i)=input('\nEnter the set of y:');
end
fprintf('X     |    Y\n');
for i=1:1:n
    fprintf('%.2f |%f \n',x(i),y(i));
end

for i=1:1:n-1
    yd(i,1)=(y(i+1)-y(i))/(x(i+1)-x(i));
end

for j=2:1:n-1
    for i=1:1:n-j
        yd(i,j)=(yd(i+1,j-1)-yd(i,j-1))/(x(i+j)-x(i));
    end
end

fprintf('\n   x  |   f(x)   |');
for i=1:1:n-2
    fprintf('f[x0');
    for j=1:1:i
        fprintf(',x%d',j);
    end
    fprintf(']   |');
end
for i=1:1:n
    fprintf('\n%10.2f  |%10.2f',x(i),y(i));
    for j=1:1:n-2
        if j>n-i
            break;
        end
        fprintf('|%10.2f',yd(i,j));
    end
end

sum=y(1);
for i=1:1:n-1
    m=1;
    for j=1:1:i
        m=m*(xf-x(j));
    end
    sum=sum+m*yd(1,i);
end
fun7=sum;
end
        
