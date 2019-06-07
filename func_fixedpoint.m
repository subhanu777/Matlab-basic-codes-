function fun7=func_fixedpoint(x,eps,n)
%sin(x)=0
%x=sin(x)+x
%f'(x)=1+cos(x)
%|f'(x)|<1=>x>Pi/4
for i=1:1:n
    x1=x+func_sin(x);
    if abs(x-x1)<eps
        break;
        i=n+1;
    else
        x=x1;
    end
end
fun7=x1;