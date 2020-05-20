function P = pravokotnik(b)
% PRAVOKOTNIK doloci pravokotnik, ki vsebuje vse kontrolne tocke
% Bezierove krivulje.
% b je tabela 2x(n+1) kontrolnih tock po stolpcih
% Pravokotnik P je dolocen s tabelo 2x4 oglisc po stolpcih

mx = min(b(1,:));
Mx = max(b(1,:));
my = min(b(2,:));
My = max(b(2,:));

P = [mx Mx Mx mx; my my My My];

end