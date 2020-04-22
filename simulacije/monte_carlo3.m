function I = monte_carlo3(f,a1,b1,a2,b2,a3,b3,N)
% monte_carlo3 izracuna integral funkcije f na obmocju [a,b] po metodi
% Monte Carlo, pri cemer funkcija izbere N nakljucnih tock na tem
% obmocju, v njih izracuna vrednost funkcije ter vrne z volumen obmocja
% pomnozeno povprecno vrednost.

X = [(b1-a1).*rand(N,1)+a1,(b2-a2).*rand(N,1)+a2, (b3-a3).*rand(N,1)+a3];
F = zeros(N,1);

for i = 1:N
    F(i) = f(X(i,1),X(i,2),X(i,3));
end

I = (b1-a1)*(b2-a2)*(b3-a3)*sum(F)/N;

end