f_levo = @(y) zeros(size(y));
f_desno = @(y) 1-y.^2;
f_zgoraj = @(x) 1-x.^2;
f_spodaj = @(x) x.^2-1;

milnica(1,32,f_spodaj,f_zgoraj,f_levo,f_desno,10e-4,'Gauss-Seidel')