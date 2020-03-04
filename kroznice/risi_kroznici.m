function risi_kroznici(T)
% risi_kroznici(T) narise trikotnik ter vcrtano in ocrtano kroznico
% skupaj s srediscema.
% Trikotnik T je podan kot matrika 3x2 tock,
% T= [x1 y1; x2 y2; x3 y2]

% Narise trikotnik
plot(T([1 2 3 1],1),T([1 2 3 1],2),'k')
hold on; axis equal

% Narise ocrtano kroznico
[So,ro] = ocrtana_kroznica(T);
PHI = linspace(0,2*pi)';
Ko = [ro*cos(PHI)+So(1),ro*sin(PHI)+So(2)];
plot(Ko(:,1),Ko(:,2))
scatter(So(1),So(2))

% Narise vcrtano kroznico
[Sv,rv] = vcrtana_kroznica(T);
PHI = linspace(0,2*pi)';
Kv = [rv*cos(PHI)+Sv(1),rv*sin(PHI)+Sv(2)];
plot(Kv(:,1),Kv(:,2))
scatter(Sv(1),Sv(2))

end