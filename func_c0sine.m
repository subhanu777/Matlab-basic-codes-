function fun7=func_c0sine(x)
n=input('Enter the no of terms in the exp series');
sum=1;
for k=1:1:n
    sum=sum+(((-1.^k).*(x.^(2.*k)))./(func_fact(2*k)));
end
fun7=sum;