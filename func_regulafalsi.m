function fun7=func_regulafalsi(a,b,eps,n)
for i=1:1:n
    fa=func_sin(a);
    fb=func_sin(b);
    x=a-(a-b).*fa/(fa-fb);
    k=func_sin(x);
    fprintf('X(%d)=%f\n',i,x);
    if(k<0)
        k=-k;
    end
    if k<eps
        fprintf('Iteration=%d,root=%f',i,x);
        break;
    else
        if (func_sin(x)<0)
            b=x;
        else
            a=x;
        end
    end
end
fun7=x;