
clusters = r0381767_cluster(Hinf26, labels);

clusters3 = [];

n = size(clusters, 2);

for i=1 : n
    if size(clusters{i},2) > 2
       clusters3 = [clusters3, {clusters{i}}];
    end
end

