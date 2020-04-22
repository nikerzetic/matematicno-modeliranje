function x = randhat(n)
%  Funkcija randhat vrne vektor velikosti n nakljucnih elementov. Elementi
%  vektorja x so izbrani nakljucno na intervalu [-1,1] glede na "hat"
%  verjetnost porazdelitve.

x = zeros(n,1);

for i = 1:n
    T = [0,42];
    while T(2) > rhohat(T(1))
        T = [2 * rand(1) - 1; rand(1)];
    end
    x(i) = T(1);
end

end