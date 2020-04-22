function I = monte_carlo1(f,a,b,N)
% monte_carlo1 izracuna integral funkcije f na intervalu [a,b] po metodi
% Monte Carlo, pri cemer funkcija izbere N nakljucnih tock na tem
% intervalu, v njih izracuna vrednost funkcije ter vrne z dolzino intervala
% pomnozeno povprecno vrednost.

X = (b - a) .* rand(N,1) + a;
F = f(X);

I = (b - a) * sum(F) /N;

end