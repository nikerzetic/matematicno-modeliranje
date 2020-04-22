function P = mojrand(p,q,a,c,m,x0)
% Funckija mojrand generira p x q matriko P nakljucnih stevil med 0 in 1 na
% podlagi multiplikativnega kongruencnega generatorja.
% 
% a,c in m so parametri generatorja, x0 pa seme.

g = @(x) mod(a * x + c, m);

P = zeros(p,q);
x = x0;

for i = 1:p
    for j = 1:q
        x = g(x);
        P(i,j) = x;
    end
end

P = P ./ m;

end