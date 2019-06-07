function fun7=func_bisection2(a,b,tol,n)
fa=func_sin(a);
fb=func_sin(b);
if(fa.*fb<0)
    fprintf('itr \t a \t b \t c \t f(A)\t f(B) \t f(c)\n');
    for j=1:1:n
        c=(a+b)./2;
        fa=func_sin(a);
        fb=func_sin(b);
        fc=func_sin(c);
        fprintf('%d \t %f \t %f \t %f \t %f\t %f \t %f\n',j,a,b,c,fa,fb,fc);
        if(abs(a-b)<tol||fc==0)
            root=c;
            break;
            j=n+1;
        else
            if(fa.*fc<0)
                b=c;
            else
                a=c;
            end
            j=j+1;
        end
    end
end
fun7=root;
