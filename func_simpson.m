function fun7=func_simpson(a,b,n)
h=(b-a)/n;
x=a+h;
sum=func_f(a)+func_f(b)+4*func_f(x);
for i=3:2:n-1
    x1=a+i*h;
    x2=a+(i-1)*h;
    sum=sum+4*func_f(x1)+2*func_f(x2);
end
fun7=(h/3)*sum;