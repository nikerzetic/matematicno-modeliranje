function [theta0,k] = isci_theta(T2)
%Funcija isci_theta v odvisnosti od tocke T2 doloci theta0, ki je resitev
%enacbe 1 - cos(theta) + B/b .*(theta - sin(theta)) = 0. Pri tem
%predpostavimo, da je zacetna tocka T1(0,0). Funkcija vrne tudi konstanto
%k, ki doloca brahistohrono.

b = T2(1);
B = T2(2);

g = @(theta) 1 - cos(theta) + B/b .*(theta - sin(theta));

theta0 = fzero(g,1);
k = sqrt(2 * b /(theta0 - sin(theta0)));

end