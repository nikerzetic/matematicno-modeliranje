function px = hornerAlg(a,x)
% vaje1x7

n = size(a,2);
px = a(n);

for i = n-1:-1:1

    px = x * px + a(i);
    
end

end