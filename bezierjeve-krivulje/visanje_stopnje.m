function c = visanje_stopnje(b)
% Funkcija visanje_stopnje zvisa stopnjo Bezierjeve krivulje podane z b
% tako, da ji doda eno tocko.

n = length(b);
c = zeros(2,n+1);

c(:,1) = b(:,1);
c(:,end) = b(:,end);

for i = 2:n
   c(:,i) = (i-1)/(n+0)*b(:,i-1) + (1-(i-1)/(n+0))*b(:,i);
end

end