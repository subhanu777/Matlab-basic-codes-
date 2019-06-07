function fun7=func_cosine(x)
n=input('Enter the number of terms in the exponential series:');
sum=1;
for k=1:1:n;
    sum=sum+(((-1).^k).*(x.^(2.*k))./(func_factorial(2.*k)));
end
fun7=sum;
