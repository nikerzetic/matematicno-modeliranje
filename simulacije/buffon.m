function p = buffon(l,t,n)
% Funkcija buffon izracuna verjetno p, da pri nakljucnem metu igle dolzine
% l le ta seka eno izmed vzporednic na razdalji t.

k = 0;

for i = 1:n
   
    [d,theta] = rand(1,2);
    
    if d*t + l/2*sin(theta*pi) >= t/2 || d*t - 1/2*sin(theta*pi) < 0
       k = k + 1; 
    end
    
end

p = k/n;

end