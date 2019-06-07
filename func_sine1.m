function fun7=func_sine1(x)
n=input('Enter the  no of terms in the exponential series:');
sum=0;
for k=0:1:n
    sum=sum+(((-1).^k).*(x.^(2.*k+1)))./(func_factorial(2.*k+1));
end
fun7=sum;