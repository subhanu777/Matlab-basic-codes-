function fun1=func_newraphson(x,eps,n)
fprintf('i\tx\t\f(x)\n');
for i=1:1:n
   fprintf('%d\t%f\t%f\n',i,x,func_sin(x));
   if abs(func_sin(x))<eps
       break;
   else
       x=x-(func_sin(x)./func_cos(x));
   end
end
fun1=x;