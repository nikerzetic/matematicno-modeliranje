function pi = aproks_pi(N)
% Funkcija aproks_pi izracuna priblizek stevila pi z nakljucno izbiro parov
% (x,y) v kvadru [0,1]x[0,1]. N je stevilo vseh izbranih parov, K pa
% stevilo izbir z radijem manjsim od 1.

K = 0;

T = rand(2,N);
K = sum(sum(T.^2) < 1);
    
pi = 4 * K / N;

end