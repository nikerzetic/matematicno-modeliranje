function Tp = presek_premic(P1,P2)
% presek_premic(P1,P2) vrne presecisce dveh premic
% Tp = presek_premic(P1,P2) vrne koordinati presecisca premic (vrsticni vektor)
% P1 in P2, ki sta zapisana implicitno z vektorjema [a1,b1,c1], [a2, b2, c2]
% (a1x+b1y+c1=0, a2x+b2y+c2=0).
% Predpostavljamo, da presecisce obstaja.

Tp = [P1(1,[1,2]); P2(1,[1,2])]\[-P1(1,3);-P2(1,3)];
Tp = Tp';

end