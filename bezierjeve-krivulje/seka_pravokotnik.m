function seka = seka_pravokotnik(l,P)
% SEKA_PRAVOKOTNIK doloci, ali premica l seka pravokotnik P ali ne.
% Premica l je podana v obliki l = [tocka, smerni] (2x2). 
% Pravokotnik P je dolocen s tabelo 2x4 oglisc po stolpcih

seka = false;

T = l(:,1);
v = l(:,2);

% if v(1) ~= 0
%     Y = v(2)/v(1)*(P(1,4)-T(1)) + T(2);
%     y = v(2)/v(1)*(P(1,2)-T(1)) + T(2);
%     if Y <= P(2,4) && y >= P(2,2)
%         seka = true;
%     end
% elseif v(2) ~= 0
%     X = v(1)/v(2)*(P(2,3)-T(2)) + T(1);
%     x = v(1)/v(2)*(P(2,1)-T(2)) + T(1);
%     if X <= P(1,3) && x >= P(1,1)
%         seka = true;
%     end
% end

predznak = zeros(1,4);

for i = 1:4
    predznak(i) = sign((P(:,i)-T)'*[-v(2); v(1)]);  
end

seka = ~(all(predznak >= 0) || all(predznak <= 0));

end