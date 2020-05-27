function plotBezier(b)
% PLOTBEZIER izrise Bezierovo krivuljo in kontrolni poligon. Za izracun
% tocke na krivulji uporabimo deCasteljauov algoritem.
% Stolpci matrike b so kontrolne tocke Bezierove krivulje.

T = linspace(0,1);
B = zeros(2,length(T));

for i = 1:length(B)
    B(:,i) = deCasteljau(b,T(i));
end

scatter(b(1,:),b(2,:),'k');
hold on;
plot(b(1,:),b(2,:),'k');
plot(B(1,:),B(2,:));

end