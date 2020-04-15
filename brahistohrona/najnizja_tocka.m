function xmin = najnizja_tocka(T1,T2)
%Funkcija najnizja_tocka izracuna xmin, pri katerem brahistohrona med tockama
%T1 in T2 doseze najnizjo vrednost.

a = T1(1);
A = T1(2);
b = T2(1);
B = T2(2);

[theta0,k] = isci_theta([b-a B-A]);

x = @(theta) a + k^2 .* (theta - sin(theta))./2;
y = @(theta) A - k^2 .* (1 - cos(theta))./2;

theta = fminbnd(y,0,theta0);
xmin = x(theta);

end