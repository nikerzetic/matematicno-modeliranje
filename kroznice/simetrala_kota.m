function p = simetrala_kota(A,T,B)
% function p=simetrala_kota(A,T,B)
% simetrala_kota(A,B) vrne simetralo kota ATB
%
% vhod:
% A,B = sosednji tocki, ki dolocata kraka kota
% T = vrh kota
%
% izhod:
% p=[a b c] (ax+by+c=0)

e1 = B-T;
e2 = A-T;
e1 = e1/norm(e1);
e2 = e2/norm(e2);

C = T + e1;
D = T + e2;

p = simetrala(C,D);

end