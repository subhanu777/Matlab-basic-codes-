function fun7=func_wadles(a,b,n)
h=(b-a)/n;
s=0;
m=n/6;
if n%6==0
    for i=1:1:m
        s=s+((3*h/10)*(func_f(a)+5*func_f(a+h)+func_f(a+2*h)+6*func_f(a+3*h)+func_f(a+4*h)+5*func_f(a+5*h)+func_f(a+6*h)));
        a=a+6*h;
    end
end
fun7=s;