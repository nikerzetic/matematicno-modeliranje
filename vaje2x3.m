x = @(r,phi) r.*cos(phi);
y = @(r,phi) r.*sin(phi);
z = @(r,phi) r.*phi;

R = linspace(1,2)';
PHI = linspace(0,10*pi)';
[R,PHI] = ndgrid(R,PHI);

X = x(R,PHI);
Y = y(R,PHI);
Z = z(R,PHI);

surf(X,Y,Z)
shading interp
