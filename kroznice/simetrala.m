function p = simetrala(A,B)
% simetrala(A,B) vrne simetralo daljice AB
% p=simetrala(A,B);
% p=[a b c] (ax+by+c=0)
% A=[x1,y1], B=[x2,y2]

T = (A + B)/2;

% Koeficient daljice
% kAB = (B(2)-A(2))/(B(1) - A(1));
% Koeficient simetrale
% k = - (B(1) - A(1))/(B(2) - A(2));
% Premica
% y = k*x + n;
% -k*x + y - n = 0;
% p = [-k,1,k*T(1)-T(2)] /* (B(1)-A(1))

p = [B(1)-A(1), B(2)-A(2), -(B(1)-A(1))*T(1)-(B(2)-A(2))*T(2)];

end