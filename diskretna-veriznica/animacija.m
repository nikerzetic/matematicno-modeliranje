function animacija(zac,L,M,h)
% ANIMACIJA izrise animacijo, ko desni konec veriznice
% dvigamo ali spuscamo vertikalno.
% Pri tem stevilo h doloca smer in dolzino:
% negativen predznak: premik navzdol za abs(h)
% pozitiven predznak: premik navzgor za h

st_korakov = 500;
dh = h/st_korakov;
premor = 0.005;

for i = 1:st_korakov
    
    zac(2,2) = zac(2,2) + dh;
    risi_veriznica(zac,L,M);
    pause(premor);
    
end

end