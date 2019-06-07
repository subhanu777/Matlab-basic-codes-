function fun1=func_GCD2(a,b)
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
        i=i+1;
    end
end
fun1=gcd;