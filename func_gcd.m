function fun7=func_gcd(a,b)
n=10.^10;
for i=1:1:n
if(a==b)
    gcd=a;
    break;
    i=n+1;
else
    if(a>b)
        a=a-b;
    else
        b=b-a;
    end
end
end
fun7=gcd;
    