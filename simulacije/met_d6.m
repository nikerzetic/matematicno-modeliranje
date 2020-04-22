function p = met_d6(n,m)
% met_d6 simulira n metov m 6-stranih kock in vrne vektor vsot vrednosti
% vseh kock.

p = zeros(n,1);

for i = 1:n
    for j = 1:m
        p(i) = p(i) + randi(6);
    end
end
        
end