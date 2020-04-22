function d = vrata(n,strategija,m)
% Funkcija vrata simulira igro problema Monty Hall. Pri tem je n stevilo
% ponovitev igre, m pa stevilo vrat. Mozni strategiji sta "vedno ostani
% zvest prvi izbiri" in "vedno zamenjaj prvo izbrana vrata". Funckija vrne
% delez zadetkov d. 
% 
% Ce strategija = true, zamenja vrata.

d = 0;

for i = 1:n
    sodnik = randi(m);
    igralec = randi(m);
    if ~strategija
        if igralec == sodnik
            d = d + 1;
        end
    else
        if igralec ~= sodnik
            d = d + 1;
        end
    end
end

d = d/n;

end