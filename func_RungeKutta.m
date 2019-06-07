function fun7=func_RungeKutta(x,y,n,f)
h=(f-x)/n;
fprintf('X              Y\n');
for i=1:1:n
    k1=h.*func_g(x,y);
    k2=h.*func_g(x+h/2.0,y+k1/2.0);
    k3=h.*func_g(x+h/2.0,y+k2/2.0);
    k4=h.*func_g(x+h,y+k3);
    k=(k1+(k2+k3).*2.0+k4)/6.0;
    x=x+h;
    y=y+k;
    fprintf('%f\t%f\n',x,y);
end
