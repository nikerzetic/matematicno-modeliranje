function [tb,tp] = cas_potovanja(T1,T2)
%Funkcija cas_potovanja izracuna cas potovanja po brahistohroni tb in cas
%potovanja po premici tp med tockama T1 in T2.

g = 9.80665;

a = T1(1);
A = T1(2);
b = T2(1);
B = T2(2);

[theta0,k] = isci_theta([b-a B-A]);

tb = k/sqrt(2 * g) * theta0;
tp = sqrt(-2*((b-a)^2 + (B-A)^2) /g/(B-A));

end