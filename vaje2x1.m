f = @(x) sin(x) .* exp(sqrt(x));
g = @(t) [cos(t) sin(t)];
h = @(t) [cos(t) sin(t) t];
k = @(x,y) x.^2 + y.^2 ./ (1 + x + y);

X = linspace(1,3)';
F = f(X);
plot(X,F)

T = linspace(0,2*pi)';
G = g(T);
plot(G(:,1),G(:,2));
axis equal

T = linspace(0,10*pi)';
H = h(T);
plot3(H(:,1),H(:,2),H(:,3));

X = linspace(0,1)';
Y = linspace(0,1)';
[X,Y] = ndgrid(X,Y);
K = k(X,Y);
surf(X,Y,K)
