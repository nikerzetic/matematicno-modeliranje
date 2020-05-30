c = [0 1 2 4; 0 -1 -1 2];
plotBezier(c);

% 1
T1 = deCasteljau(c,0.5);
x1 = T1(1);

% 2
dc = bezier_der(c,0.5,1);
N2 = norm(dc);

% 3
R = norm(T1);

% 4
dr = [dc; 0];
ddr = [bezier_der(c,0.5,2); 0];
kappa = cross(dr,ddr);
kappa = kappa(3);
kappa = kappa / (norm(dc)^3);

% 5
[pc,~] = sub_demo(c,0.4,false);
vsota_ordinat_subdivizije = sum(pc(2,:));

% 6
Tp = presek_s_premico(c,[0 1; 1 -1],1e-15);
X = linspace(0,4);

% 7
c1 = visanje_stopnje(c);
vsota_abscis = sum(c1(1,:));
plotBezier(c1);

% 8
f = @(t) bezier_der_y(c,t,1);
t0 = fzero(f,1);

% 9
g = @(t) norm(deCasteljau(c,t) - [2;0.5]);
tm = fminsearch(g,1);
