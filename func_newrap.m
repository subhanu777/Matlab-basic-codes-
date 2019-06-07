function fun7=func_newrap(x,eps,n)
fprintf('itr\tx\tf(X)\n');
for i=1:1:n
    fprintf('%d\t%f\t%f\n',i,x,func_sin(x));
    if abs(func_sin(x))<eps
        break;
        i=n+1;
    else
        x=x-func_sin(x)/func_cos(x);
    end
end
fun7=x;