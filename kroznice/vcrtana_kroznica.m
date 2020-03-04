function [S,r] = vcrtana_kroznica(T)
% vcrtana_kroznica vrne sredisce in radij vcrtane kroznice
% [S,r]=vcrtana_kroznica(T) vrne sredisce in radij trikotniku T vcrtanega kroga
% T je podan kot 3x2 matrika tock: [x1 y1; x2 y2; x3 y3].

p1 = simetrala_kota(T(1:2,:));
p2 = simetrala_kota(T(1:3,:));

p = presek_premic(p1,p2);

a = norm(T(1,:)-T(2,:));
b = norm(T(1,:)-T(3,:));
c = norm(T(3,:)-T(2,:));

s = a + b + c;
s = s/2;
P = sqrt(s*(s-a)*(s-b)*(s-c));
r = P/s;

end