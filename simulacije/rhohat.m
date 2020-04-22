function y = rhohat(x)
% Funkcija rhohat vrne x + 1 za -1 <= x <= 0 in 1 - x za 0 < x <= 1.

if  -1 <= x && x <= 0
    y = x + 1;
elseif 0 < x && x <= 1
    y = 1 - x;
else 
    y = 0;
end

end