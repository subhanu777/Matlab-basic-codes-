function fun7=func_sol_linear_eqn(A,b)
Ab=[A b];
[m n]=size(Ab);
x=zeros(m,1);
for k=1:1:m-1
    for i=k+1:1:m
        m1=Ab(i,k)./Ab(k,k);
        for j=1:1:n
            Ab(i,j)=Ab(i,j)-m1*Ab(k,j);
        end
    end
end
Ab
A=Ab([1:m],[1:m]);
b=Ab([1]);
x(m)=Ab(m,n)./Ab(m,m);
for i=m-1:-1:1
    m2=1./Ab(i,i);
    sum=0;
    for j=m:-1:i
        if(i==j)
            sum=sum+0;
        else
            sum=sum+Ab(i,j).*x(j);
        end
    end
    x(i)=m2.*(Ab(i,n)-sum);
end
Aug=Ab;
fun7=x;