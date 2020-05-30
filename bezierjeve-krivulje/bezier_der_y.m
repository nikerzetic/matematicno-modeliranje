function v = bezier_der_y(b,t,r)
% Funkcija bezier_der s pomo;jo de Casteljaujevaga algoritma izracuna r-ti
% odvod Bezierjeve krivulje b.

for i = 1:r
    b = (length(b)-1) * diff(b,1,2);
end
v = deCasteljau(b,t);
v = v(2);

end