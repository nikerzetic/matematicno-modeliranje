function v = bezier_der(b,t)
% Funkcija bezier_der s pomo;jo de Casteljaujevaga algoritma izracuna
% tangentni vektor dane Bezierjeve krivulje pri paramatru t.

b = (length(b)-1) * diff(b,1,2);
v = deCasteljau(b,t);

end