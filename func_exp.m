function fun7=func_exp(x,n)
s=1;
for i=1:1:n
    s=s+x.^i/func_fact(i);
end
fun7=s;