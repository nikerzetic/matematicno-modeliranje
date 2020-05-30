function Tp = presek_s_premico(b,l,tol)
% PRESEK_S_PREMICO poisce presek ravninske Bezierove krivulje 
% s premico l podano s tocko P in smernim vektorjem s
% 
% Tp je tabela tock presecisc (ce ni presecisca, vrne prazno matriko)
% b je tabela 2x(n+1) kontrolnih tock po stolpcih
% l = [P,s]
% tol je natancnost, do katere isce presecisce.

Tp = [];
P = pravokotnik(b);

if norm(P(:,3) - P(:,1)) > tol
    [c,d] = sub_demo(b,0.5,false);
    Pc = pravokotnik(c);
    Pd = pravokotnik(d);
    if seka_pravokotnik(l,Pc)
        Tp = [Tp presek_s_premico(c,l,tol)];
    end
    if seka_pravokotnik(l,Pd)
        Tp = [Tp presek_s_premico(d,l,tol)];
    end
else
   Tp = [Tp P(:,1)];
end

Tp = uniquetol(Tp',tol,'ByRows',true)';

end