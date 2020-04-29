function T = delec(a,N,risi)
% DELEC izrise potovanje delca po kvadratu.
% T = [desno gor levo dol] je tabela števila
% prehodov delca skozi eno od stranic,
% na primer T(2) = kolikokrat se delec dotakne
% desne stranice kvadrata [-a,a]x[-a,a].
% N je stevilo simulacij.
% Delec se na zacetku nahaja v (0,0), korak je 1.

T = [0 0 0 0];
smeri = [0 1 0 -1; 1 0 -1 0];

for i = 1:N
   
    x = [0; 0];
    if risi
        hold off
        scatter(x(1),x(2))
        axis([-a a -a a])
        grid on
        hold on
    end
    
    while true
        
        s = randi(4);
        nx = x + smeri(:,s);
        if risi
            plot([x(1),nx(1)],[x(2),nx(2)])
            pause(.2)
        end
        x = nx;
        
        if any(abs(x) == a)
            T = T + [x==a; x==-a]';
            break
        end
        
    end
    
end

end