function v = bezier_der(b,t)
% Funkcija bezier_der s pomo;jo de Casteljaujevaga algoritma izracuna
% tangentni vektor dane Bezierjeve krivulje pri paramatru t.

n = length(b)-1;
B = @(j) nchoosek(n-1,j).*t.^j.*(1-t).^(n-j-1);
v = [0;0];

for i = 1:n
   
    v =  v + (b(:,i+1) - b(:,i)).*B(i-1);
    
end

v = v * n;

end