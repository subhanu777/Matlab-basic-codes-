function fun7=func_fixed(x,eps,n)
%sin(x)=0
%x=sin(x)+x
%f(x)=sin(x)+x
%f'(x)=1+cos(x)
%|f'(x)|<1=>x>Pi/4
for i=1:1:n
    x1=func_test(x);
    if abs(x-x1)<eps
        i=n+1;
        break;
    else
        x=x1;
    end
end
fun7=x1;