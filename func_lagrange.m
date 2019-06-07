function fun7=func_lagrange(xf,n)

x=zeros(n+1,100);
y=zeros(n+1,100);
for i=1:1:n
x(i)=input('\nEnter the set of x:');
y(i)=input('\nEnter the set of y:');
end
fprintf('X         Y\n');
for i=1:1:n
    fprintf('%f\t%f\n',x(i),y(i));
end
Y=0.0;
fprintf('      ');
for i=1:1:n
    fprintf('X-X(%d)|     ',i);
end
fprintf('\n');
for i=1:1:n
    sum=y(i);
    fprintf('X-X(%d)|     ',i);
    for j=1:1:n
        if (i~=j)
            sum=sum*(xf-x(j))./(x(i)-x(j));
            fprintf('%f     ',(x(i)-x(j)));
        else
            fprintf('          ');
        end
       
    end
     fprintf('\n');
    Y=Y+sum;
end
fprintf('\nHence for X= %d  value for Y=%d',xf,Y);
fun7=Y;