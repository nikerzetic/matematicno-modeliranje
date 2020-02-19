function A = matrikaA(x,y)
% vaje1x6

A = x ./ y';
A(:,abs(y)<100*eps) = 1;

end