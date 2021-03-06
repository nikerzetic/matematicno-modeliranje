function b = C1CubicSpline(u,p,v)
% Funkcija C1CubicSpline izracuna kontrolne tocke iskanega kubicnega
% zlepka.

N = length(u)-1; % v resnici N
b = zeros(2,3*N+1);

for i = 0:N-1
    
    b(:,3*i+1) = p(:,i+1);
    b(:,3*i+4) = p(:,i+2);
    b(:,3*i+2) = b(:,3*i+1) + 1/3*(u(i+2)-u(i+1))*v(:,i+1);
    b(:,3*i+3) = b(:,3*i+4) - 1/3*(u(i+2)-u(i+1))*v(:,i+2);
    
end

for i = 0:N-1
    plotBezier(b(:,3*i+1:3*i+4));
end

end