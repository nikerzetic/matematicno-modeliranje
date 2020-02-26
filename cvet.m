function cvet(a,b,n)
% narise cvet iz elips v srediscni legi, kjer je vsaka naslednja zarotirana
% za 2*pi/n glede na prejsnjo

phi = @(t) [a*cos(t); b*sin(t)];

theta = 2 * pi / n;
T = linspace(0,2*pi);

P = phi(T);

plot(P(1,:),P(2,:))

axis equal
hold on

for i = 1:n
   
    
    R = [cos(i*theta) -sin(i*theta); sin(i*theta) cos(i*theta)];
    phi = @(t) R*[a*cos(t); b*sin(t)];
    P = phi(T);
    plot(P(1,:),P(2,:))
    
end

end