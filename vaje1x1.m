A = [11 2 -3 0; 2 1 8 7; 0 22 21 -9; 4 -3 2 0; 5 1 10 -8];

M = max(max(A));
ATA = A' * A;
AOA = A .* A;

B = A(:,1:3);
C = A([2 4],:);
A([2 4],:) = ones(2,4);