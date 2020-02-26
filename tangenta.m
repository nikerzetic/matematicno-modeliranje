function tangenta(f,df,interval,st_tock)
% izrise animacijo drsenja tangente po grafu funkcije f na intervalu
% inteval

tang = @(x,x0) f(x0) + df(x)*(x-x0);
a = interval(1);
b = inteval(2);
h = (b-a)/st_tock;
X0 = a:h:b;

for i = 1:st_tock
    
    narisi = plot(X,tang(X,X0(i)));
    pause(0.05)
    delete(narisi)

end

end