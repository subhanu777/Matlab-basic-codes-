function fun7=func_regulafal(a,b,eps,n)
fprintf('i\tx\tf(x)\n');
for i=1:1:n
    fa=func_sin(a);
    fb=func_sin(b);
    x=a-(a-b).*fa/(fa-fb);
    fprintf('X(%d)=%f\n',i,x);
    k=func_sin(x);
    if abs(k)<eps
        fprintf('iteration=%d,Root=%f',i,x);
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
    