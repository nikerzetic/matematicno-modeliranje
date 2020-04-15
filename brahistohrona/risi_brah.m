function risi_brah(T1,T2)
%Funkcija risi_brah narise brahistohrono med tockama T1 in T2.

a = T1(1);
A = T1(2);
b = T2(1);
B = T2(2);

[theta0,k] = isci_theta([b-a B-A]);

THETA = linspace(0,theta0);
x = @(theta) a + k^2 .* (theta - sin(theta))./2;
y = @(theta) A - k^2 .* (1 - cos(theta))./2;
X = x(THETA);
Y = y(THETA);

scatter([a b],[A B])
hold on
plot(X,Y)
axis equal

end