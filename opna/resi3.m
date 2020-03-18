function x = resi3(a,b,c,f)
% function x = resi3(a,b,c,f)
%
% resi3: resevanje tridiagonalnega sistema, predstavljenega
% s tremi vektorji in desno stranjo
%
% x je resitev sistema,
% a,b,c so pod/glavna/nad diagonale dim. n-1, n, n-1, 
% f je desna stran sistema
%
% funkcija sistem resi s Thomasovim algoritmom

n = length(b);
x = zeros(n,1);

for i = 1:n-1

    b(i+1) = b(i+1) - a(i)/b(i)*c(i);
    f(i+1) = f(i+1) - a(i)/b(i)*f(i);
    
end

x(n) = f(n)/b(n);

for i = n-1:-1:1
    
    x(i) = (f(i) - c(i)*x(i+1))/b(i);
    
end

end