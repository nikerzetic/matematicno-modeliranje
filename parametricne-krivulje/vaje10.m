x = @(t) -cos(t)+2.*cos(0.5.*t);
y = @(t) -sin(t)+2.*sin(0.5.*t);
c = @(t) [x(t),y(t)];
int = [0,4*pi];

T = linspace(0,4*pi);
plot(x(T),y(T));
axis equal;

% 1
dc1 = norm(c(1),2);

% 2
dx = @(t) sin(t) - sin(0.5.*t);
dy = @(t) -cos(t) + cos(0.5.*t);
dc = @(t) [dx(t), dy(t)];
Ndc = @(t) sqrt(dx(t).^2 + dy(t).^2);
L = integral(Ndc,0,4*pi);

% 3
r = @(t) sqrt(x(t).^2 + y(t).^2);
dphi = @(t) (dy(t) .* x(t) - y(t) .* dx(t)) ./ (x(t).^2 + y(t).^2);

P = integral(@(t) 1 / 2 * r(t).^2 .* dphi(t), 0, 4*pi);

% 4
ddx = @(t) cos(t) - 0.5.*cos(0.5.*t);
ddy = @(t) sin(t) - 0.5.*sin(0.5.*t);
kappa = @(t) abs(dx(t).*ddy(t)-dy(t).*ddx(t))./sqrt(dx(t).^2+dy(t).^2).^3;
kappa2pi = kappa(2*pi);

% 5
px = @(t) t;
py = @(t) -x(t);

g = @(t) y(t) - py(t);
t1 = fzero(g,1);
t2 = fzero(g,2);
presecisce1 = c(t1);
presecisce2 = c(t2);

% 6
v1 = fzero(dy,2);
v2 = fzero(dy,7);

% 7
rmin = @(t) sqrt((x(t) - 2).^2 + (y(t) - 2).^2);
tr = fminsearch(rmin,1);
rm = rmin(tr);

% 8
dxa = @(t,a) a.*sin(t) - sin(0.5.*t);
dya = @(t,a) -a.*cos(t) + cos(0.5.*t);
ddxa = @(t,a) a.*cos(t) - 0.5.*cos(0.5.*t);
ddya = @(t,a) a.*sin(t) - 0.5.*sin(0.5.*t);
La = @(a,t) sqrt(dxa(t,a).^2 + dya(t,a).^2);
kappaa = @(a,t) abs(dxa(t,a).*ddya(t,a)-dya(t,a).*ddxa(t,a))./sqrt(dxa(t,a).^2+dya(t,a).^2).^3;
I = @(a) integral(@(t) La(a,t) + kappaa(a,t).^2,0,4*pi);
ta0 = fminsearch(I,-0.5);

