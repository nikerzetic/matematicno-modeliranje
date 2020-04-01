function X = ver_uv(W0,zac,L,M)
% VER_UV resi problem veriznice iz sistema za u in v.
% Rezultat X je 2x(n+2) tabela koordinat vozlisc, kjer
% prva vrstica doloca abscise, druga ordinate iskanih tock.
%
% Vhodni parametri:
% W0 = [u0;v0] zaceten priblizek pri resevanju sistema
% nelinearnih enacb.
% zac = [x_0 x_n+1;y_0 y_n+1], kjer sta (x_0,y_0) in
% (x_n+1, y_n+1) obesisci.
% L je vrstica, ki doloca dolzine palic.
% M je vrstica, ki doloca mase palic.

n = length(M);
MI = zeros(1,n-1);
NI = zeros(1,n);

for i = 1:n-1
    
    MI(i) = (M(i) + M(i+1))/2;
    NI(i+1) = NI(i) + MI(i);
    
end

F = @(W) sistem_uv(W,zac,L,NI);
C = fsolve(F,W0);
u = C(1);
v = C(2);

KSI = zeros(1,n);
ETA = zeros(1,n);

for i = 1:n
    
    KSI(i) = L(i) / sqrt(1 + (v - u * NI(i))^2);
    ETA(i) = KSI(i)* (v - u * NI(i));

end

X = zeros(2,n+1);
X(:,1) = zac(:,1);

for i = 2:n+1
    
    X(1,i) = KSI(i-1) + X(1,i-1);
    X(2,i) = ETA(i-1) + X(2,i-1);
    
end

end