% x = rand(1,100); histogram(x); histogram(x,20);
% histogram(x,linspace(0,1,21)); randi(10,5); randn(1,100);

P = mojrand(1,100,13,0,31,1);
histogram(P);

p = met_d6(1000,100);
histogram(p);

pi0 = aproks_pi(100000);

f = @(x) x;
I = monte_carlo1(f,1,2,1000);

F = @(x,y,z) sin(x)*sin(y)*sin(z);
J = monte_carlo3(F,0,pi,0,pi,0,pi,1000);

V = vrata(100,true,3);

x = randhat(5000);
histogram(x);
