function fun7=func_fibonaci(n)
A(1)=-1;
A(2)=1;
for i=3:1:n
    A(i)=A(i-1)+A(i-2);
    fprintf('%d  ',A(i));
end

