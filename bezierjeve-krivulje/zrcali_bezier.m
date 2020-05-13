function zrcali_bezier(b)
% ZRCALI_BEZIER prezrcali Bezierovo krivuljo, podano s kontrolnimi
% tockami b, preko premice p, dolocene z zacetno in koncno kontrolno tocko.
% Izrise tudi zacetno in prezrcaljeno krivuljo ter oba kontrolna poligona.

A = b(:,1);
B = b(:,end);

v = B - A;
v = v / norm(v);

plotBezier(b);

for i = 2:size(b,2)
    r = v' * (b(:,i)-b(:,1));
    r = r * v + b(:,1);
    b(:,i) = b(:, i) - 2 * ((b(:, i) - b(:, 1)) - r);
end

plotBezier(b);


end