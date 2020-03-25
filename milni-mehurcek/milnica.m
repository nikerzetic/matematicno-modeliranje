function milnica(a,n,f_spodaj,f_zgoraj,f_levo,f_desno,tol,metoda)
% MILNICA izracuna obliko milnice na kvadratu
% [-a,a] x [-a,a], kjer so podane robne vrednosti
% s funkcijami f_i. Pri tem je:
% n+2 je stevilo delilnih tock na eni koordinatni osi
% f_i so stiri funkcije ene spremenljivke, ki dolocajo
% vrednosti na robu.
% tol je toleranca pri iterativni metodi
% metoda je stikalo, ki doloca iterativno metodo:
%'Jacobi' = Jacobijevo iteracijo
%'Gauss-Seidel' = Gauss-Seidelovo iteracijo

A = -a:(2*a/(n+1)):a;
U = zeros(n+2);

for i=1:n+2
    U(1,i) = f_zgoraj(A(i));
    U(n+2,i) = f_spodaj(A(i));
    U(i,1) = f_levo(A(i));
    U(i,n+2) = f_desno(A(i));
end

if metoda == "Jacobi"
    jacobi(U,tol);
elseif metoda == "Gauss-Seidel"
    gauss_seidl(U,tol);
else
    disp ' Argument metoda je lahko le 'Jacobi' ali 'Gauss-Seidel'.'
end

end