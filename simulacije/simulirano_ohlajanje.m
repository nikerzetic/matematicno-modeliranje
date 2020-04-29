function [x,m] = simulirano_ohlajanje(f,x0,int,T0,T,c,iter,risi)
% Funkcija simulirano_ohlajanje poisce minimum m funkcije f. Zacnemo z
% nakljucno resitvijo in pripadajoco vrednostjo kriterijske funkcije. Tekom
% algoritma generiramo nove kandidate iz sosecine. Ce je funkcijska
% vrednost v novi resitvi nizja, jo sprejmemo. Ce je vrednost nove resitve
% slabsa, jo algoritem sprejme z neko verjetnostjo. Verjetnost sprejetja
% slabsih resitev tekom algoritma zmanjsujemo.

x = x0;
val = f(x0);

if risi
    X = linspace(int(1),int(2));
    Y = f(X);
    hold on;
    plot(X,Y);
    hold off;
end

while T0 > T
    
    for i = 1:iter
        z = x + (2*rand(1) - 1);
        while z < int(1) || z > int(2)
            z = x + 2*T0*rand(1) - 1;
        end
        df = f(z) - val;
        sprejmi = false;
        if df > 0
            if rand(1) < exp(-df/T0)
                sprejmi = true;
            end
        elseif df < 0
            sprejmi = true;
        end
        
        if sprejmi
            x = z;
            val = f(z);
        end     
    end
    T0 = T0 * c;
    if risi
        scatter(x,val);
        pause(0.2);
    end
end

m = f(x);

end