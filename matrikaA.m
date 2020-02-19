function A = matrikaA(x,y)
% vaje1x6

A = x .* (1 ./ y');
A(:,y==0) = 1;

end