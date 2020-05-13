function premakni_bezier(b,s)
% PREMAKNI_BEZIER translira Bezierovo krivuljo, podano s kontrolnimi
% tockami b, za vektor s. Izrise tudi zacetno in translirano krivuljo
% ter oba kontrolna poligona. 

plotBezier(b);
b(1,:) = b(1,:) + s(1);
b(2,:) = b(2,:) + s(2);
plotBezier(b);

end