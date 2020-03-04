function [S,r] = ocrtana_kroznica(T)
% ocrtana_kroznica vrne sredisce in radij ocrtane kroznice
% [S,r]=ocrtana_kroznica(T) vrne sredisce in radij trikotniku T
% ocrtane kroznice. T je 3x2 matrika: [x1 y1; x2 y2; x3 y3].
% S=[x;y] sredisce
% r radij

p1 = simetrala_kota(T(1,:),T(2,:),T(3,:));
p2 = simetrala_kota(T(3,:),T(1,:),T(2,:));
S = presek_premic(p1,p2);
r = norm(S - T(1,:));

end