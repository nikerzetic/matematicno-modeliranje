function l = dolzina_loka(T1,T2)
% Funkcija dolzina_loka vrne dolzino loka brahistohrone l med tockama T1 in
% T2.

a = T1(1);
A = T1(2);
b = T2(1);
B = T2(2);

[theta0,k] = isci_theta([b-a B-A]);

x = @(theta) k^2 .* (1 - cos(theta))./2;
y = @(theta) - k^2 .* sin(theta)./2;

r = @(theta) sqrt(x(theta).^2 + y(theta).^2);

l = integral(r,0,theta0);

end