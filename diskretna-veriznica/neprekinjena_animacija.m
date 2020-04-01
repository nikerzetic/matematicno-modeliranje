function neprekinjena_animacija(zac,L,M,h)
% ANIMACIJA izrise neprekinjeno animacijo, ko desni konec veriznice
% dvigamo in spuscamo vertikalno, ali obratno.
% Pri tem stevilo h doloca smer in dolzino:
% negativen predznak: premik navzdol za abs(h)
% pozitiven predznak: premik navzgor za h

st_korakov = 500;
dh = h/st_korakov;

while true
   
    animacija(zac,L,M,h);
    zac(2,2) = zac(2,2) + h;
    animacija(zac,L,M,-h);
    zac(2,2) = zac(2,2) - h;
    
end

end