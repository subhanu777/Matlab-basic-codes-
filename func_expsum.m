function fun7=func_expsum(x,n)
sum=1;
for j=1:1:n
    y=func_factorial(j);
    sum=sum+(x.^j)./y;
end
fun7=sum;