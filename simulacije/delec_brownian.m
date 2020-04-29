function T = delec_brownian(a, b, poz, delta, N, risi)
% Simulacija: Zacni v dani poziciji poz v pravokotniku [-a,a]x[-b,b]
% in poisci najvecji krog, ki ga lahko vrises v ta pravokotnik.
% Pojdi v nakljucno tocko na robu kroga in ce je razdalja do roba
% pravokotnika manjsa kot delta, stej da si presel stranico.
% T je tabela števila prehodov delca skozi straniec pravokotnika.
% N je stevilo simulacij. T = [desno levo gor dol]

T = [0 0 0 0];

for ponovitev = 1:N
    
    x = poz;
    if risi
        hold off
        scatter(x(1),x(2))
        axis([-a a -b b])
        grid on
        hold on
    end
    
    while true
        [r,i] = min([abs(a-x(1)) abs(a+x(1)) abs(b-x(2)) abs(b + x(2))]);
        
        if r <= delta
            T(i) = T(i) + 1;
            break
        end
        
        theta = 2 * pi * rand(1);
        nx = x + [r * cos(theta); r * sin(theta)];
        if risi
            plot([x(1),nx(1)],[x(2),nx(2)])
            pause(.2)
        end
        x = nx;
    end
    
end

end