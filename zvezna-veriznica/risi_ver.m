function risi_ver(T1,T2,L,tol)
% RISI_VER narise zvezno veriznico. Pri tem so:
% T1 in T2 sta krajisci veriznice oblike T1(a,A) in
% T2(b,B),
% L je dolzina veriznice,
% tol je toleranca, ki doloca natancnost priblizka
% pri navadni iteraciji.

a = T1(1);
A = T1(2);
b = T2(1);
B = T2(2);

X = linspace(a,b);

z = isci_z(T1,T2,L,1,tol);

v = atanh((B-A)/L) + z;
u = atanh((B-A)/L) - z;

C = (b-a)/(v-u);
D = (a*v - b*u)/(v-u);

lambda = A - C * cosh((a-D)/C);

w = @(x) lambda + C .* cosh((x-D)./C);

W = w(X);

plot(X,W)
axis equal

end