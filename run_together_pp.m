function [] = run_together_pp()

T = readtable('dataQP.csv');
data_ = table2array(T);

Nc = 3;
iteration = 500;

%Select the first Cluster Random
len = length(data_);
Ct = randi(len,1,1);
C1 = data_(Ct,:);
Clusters = C1;

for i = 1: (Nc-1)
    C2 = probability_clusters(data_,C1);
    Clusters(i+1,:) = C2;
end    
%disp(Clusters)

%For this step we repeat the same that k-means.
SSE_e = zeros(iteration,3);
for i = 1 : iteration

    values = eval_eucli_dis(data_,Clusters);
    G = find_specific_cluster(values);
    [SSE] = Eval_Sum_of_Squared_Error(G,Clusters);
    [Cluster] = UpdateCentroides(G,Clusters);
    Clusters = Cluster;    
    SumSSE = sum(SSE);
    SSE_e(i) = SumSSE; 
end
%disp(G)
[Cluster1,Cluster2,Cluster3] = separateClusters(G);
plotkmeanspp(data_,Clusters,Cluster1,Cluster2,Cluster3)
%plot(SSE_e)
%hold on
%xlabel('Iteration')
%ylabel('Sum of Squared Error (SSE)')
%hold off
end