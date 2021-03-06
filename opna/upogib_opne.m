function [r,u] = upogib_opne(f,R,n)
% function [r,u] = upogib_opne(f,R,n)
%
% upogib_opne racuna obliko prereza opne, napete na krozno zanko
% r je delitev v radialni smeri
% u je vektor priblizkov za resitev
% f je desna stran enacbe u''+1/r u' = f(r)
% R je radij krozne zanke
% n je stevilo delilnih intervalov (indeksi: 0,1,2,...,n)
% uporabimo kompakten zapis matrike s 3 stolpci (resi3.m)

h = R/n;
r = (0:h:R)'; % velikosti n+1
fs = h^2 * f(r(2:end)); % velikosti n

as = zeros(n-1,1);
bs = -2 * ones(n,1); %velikosti n
cs = zeros(n-1,1);

as(1) = 1 - h/2/r(2);
cs(1) = 2;

for i = 2:n-1
    
    as(i) = 1 - h/2/r(i+1);
    cs(i) = 1 + h/2/r(i);

end
    
u = resi3(as,bs,cs,fs);
u = [u; 0];

end