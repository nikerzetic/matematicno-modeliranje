function b = aproksimacija_kroznice(fi,d)
% APROKSIMACIJA_KROZNICE aproksimira kroznico s Hermiteovo interpolacijo (dvojno ujemanje v robovih intervala).
% Izracuna kontrolne tocke kubicne Bezierove krivulje, ki aproksimira
% lok kroznice
% (cos(t), sin(t)), t \in [-fi,fi].
% Z vrtenjem Bezierove krivulje za kot 2*fi dobimo zlepek.
%
% d...parameter, ki dolo?a dolžino tangentnega vektorja interpolanta v krajiš?ih intervala [-fi,fi] 
% Ce parametra d ne predpisemo, naj se izracuna tako, da krivulja dodatno interpolira tocko (1,0) pri  t = 1/2

T1 = [cos(-fi); sin(-fi)];
T2 = [cos(fi); sin(fi)];
dT1 = -[sin(-fi); -cos(-fi)];
dT2 = -[-sin(fi); cos(fi)];

if nargin < 2
    b = @(d) norm(deCasteljau([T1,T1+d*dT1,T2+d*dT2,T2],0.5)-[1;0]);
    d = fminsearch(b,1);
end

b = [T1,T1+d*dT1,T2+d*dT2,T2];
plotBezier(b); axis equal;

end