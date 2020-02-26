f = @(x,y) sin(x.^2 - y.^4) ./ (x.^2 - y.^4);

X = (0:0.01:1)';
Y = (0:0.01:2)';
[X,Y] = ndgrid(X,Y);

F = f(X,Y);

surf(X,Y,F)
shading interp

h = @(x,y) x.^2 - y.^4;
H = h(X,Y);
F(abs(H)<1e-10) = 1;

surf(X,Y,F)
shading interp

minimum = min(min(F));
maksimum = max(max(F));

m = find(F-minimum<10e-5);
M = find(F==maksimum);
hold on
scatter3(X(m),Y(m),F(m))
scatter3(X(M),Y(M),F(M))
