function fun7=func_bisection(a,b,eps,n)
fa=func_sin(a);
fb=func_sin(b);
if (fa*fb<0)
    fprintf('itr\ta\tb\tc\tf(a)\tf(b)\tf(c)\n');
    for i=1:1:n
        c=(a+b)/2;
        fa=func_sin(a);
        fb=func_sin(b);
        fc=func_sin(c);
        fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',i,a,b,c,fa,fb,fc);
        if(abs(b-a)<eps||fc==0)
            root=c;
            break;
            i=n+1;
        else
            if(fa.*fc<0)
                b=c;
            else
                a=c;
            end
        end
    end
else
    root=1000;
    fprintf('No root or even root exist in the interval(%f,%f)',a,b);
end
fun7=root;