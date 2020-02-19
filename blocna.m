function A = blocna(n)
% vaje1x3

T = diag(ones(n-1,1),-1) + diag(ones(n-1,1),1) + diag(4 * ones(n,1));

A = kron(eye(n),T) + kron(diag(eye(n-1,1),1),eye(n)) + kron(diag(eye(n-1,1),-1),eye(n));

end