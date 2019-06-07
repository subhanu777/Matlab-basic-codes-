function fun7=func_trap(a,b,n)
x=zeros(n+1,1);
h=(b-a)/n;
for j=1:1:n
    x(j)=a+j*h;
end
s1=0;s2=0;
for j=1:1:n
    y=x(j);
    z=x(j+1);
    s1=s1+func_f(y);
    s2=s2+func_f(z);
end
fun7=(h/2)*(s1+s2);