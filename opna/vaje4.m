[r,u1] = upogib_opne(@(x)1+0*x,1,100);
plot(r,u1);

axis equal
[r,u2] = upogib_opne(@(x)1-x.^2,1,100);
plot(r,u2);

[r,u3] = upogib_opne(@(x)sin(2*pi*x),1,100);
plot(r,u3);

x = @(r,phi) r.*cos(phi);
y = @(r,phi) r.*sin(phi);
z = @(r,phi) r.*phi;

R = (0:1/100:1)';
PHI = linspace(0,2*pi,101)';
[R,PHI] = ndgrid(R,PHI);

X = x(R,PHI);
Y = y(R,PHI);
Z = repmat(u2,[1,size(u2)]);

surf(X,Y,Z)
shading interp
