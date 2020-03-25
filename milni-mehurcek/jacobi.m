function U = jacobi(U,tol)
% JACOBI izvaja Jacobijevo metodo na mrezi U, ki predstavlja
% diskretizacijo kvadrata [-a,a] x [-a,a]. Na vsakem koraku
% iteracije je vsak element izracunan kot povprecje njegovih
% stirih sosedov. Pri tem je U matrika z niclami v notranjosti
% in vrednostmi na robu, dolocenimi z robnimi pogoji.
% Pri Jacobijevi metodi potrebujemo pomozno mrezo.
% tol je toleranca, ki doloca natancnost izracunane resitve.

if nargin < 2
    tol = 10e-10; 
end

P = U;
n = size(U,1);
sprememba = 42;

[X,Y] = ndgrid(1:n);

while sprememba > tol
   sprememba = 0;
   for i=2:n-1
       for j=2:n-1
            P(i,j) = (U(i-1,j) + U(i,j-1) + U(i+1,j) + U(i,j+1)) ./ 4;
            razlika = abs(P(i,j) - U(i,j));
            if razlika > sprememba
                sprememba = razlika;
            end
       end
   end
   U = P;
   pause(0.1);
   surf(X,Y,U);
end

end