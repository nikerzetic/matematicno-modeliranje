function generiraj_parametrizacijo(p,v,alpha)

N = length(p);
u = zeros(N,1);

for i = 2:N
    
    u(i) = u(i-1) + norm(p(:,i) - p(:,i-1))^alpha;
    
end

C1CubicSpline(u,p,v)

end