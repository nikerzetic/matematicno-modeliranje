% delec(5,3,true)
% delec_brownian(10,5,[0;0],10e-10,1000,false)
% delec_brownian(6,5,[0;0],10e-3,10,true)
f = @(x) sin(10.*x) + cos(2.*x)./3 + (x - 5).^2./10;
[x, m] = simulirano_ohlajanje(f,1,[0;10],1,0.0001,0.9,200,true)