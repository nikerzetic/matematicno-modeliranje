function q = odvod(p)
% vaje1x8

n = size(p,2);
q = zeros(1,n-1);

for i = 1:n-1
    
    q(i) = p(i+1) * i;

end