function U = gauss_seidl(U,tol)
% GAUSS_SEIDL izvaja Gauss-Seidlovo metodo direktno
% na mrezi U, ki predstavlja diskretizacijo kvadrata
% [-a,a] x [-a,a]. V vsakem koraku iteracije je vsak element
% izracunan kot povprecje njegovih stirih sosedov.
% Pri tem je U matrika z niclami v notranjosti in
% vrednostmi na robu, dolocenimi z robnimi pogoji.
% tol je toleranca, ki doloca natancnost izracunane resitve

if nargin < 2
    tol = 10e-10; 
end

n = size(U,1);
sprememba = 42;

[X,Y] = ndgrid(1:n);

while sprememba > tol
   sprememba = 0;
   for i=2:n-1
       for j=2:n-1
            element = U(i,j);
            U(i,j) = (U(i-1,j) + U(i,j-1) + U(i+1,j) + U(i,j+1)) ./ 4;
            razlika = abs(element - U(i,j));
            if razlika > sprememba
                sprememba = razlika;
            end
       end
   end
   pause(0.1);
   surf(X,Y,U);
end

end