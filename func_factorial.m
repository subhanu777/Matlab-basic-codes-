function fun7=func_factorial(n)
if n==1
    fun7=1;
else
    fun7=n*func_factorial(n-1);
end