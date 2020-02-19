function A = vaje1x2(n)

A = diag(1:n) + diag(ones(n-1,1),-1) + diag(-ones(n-2,1),-2) + triu(4*ones(n),1);

end