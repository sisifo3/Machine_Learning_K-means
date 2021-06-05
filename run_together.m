function[G] = run_together()

%The first step is, load the data
T = readtable('dataQP.csv');
data_ = table2array(T);

%data_ = data_([1:10],:); 
%C: Number of Clusters

C = 3;
iteration = 10;

Ci = Random_initialization(data_,C);
SSE_e = zeros(iteration,length(C));
%disp(Ci)
for i = 1 : iteration

    values = eval_eucli_dis(data_,Ci);
    G = find_specific_cluster(values);
    [SSE] = Eval_Sum_of_Squared_Error(G,Ci);
    [Cluster] = UpdateCentroides(G,Ci);
    Ci = Cluster;
    SumSSE = sum(SSE);
    SSE_e(i) = SumSSE; 

    
end

%plot_new_clusters(data_,Cluster)
%disp(SSE)
%disp('Cluster')
%disp(Cluster)
%[Cluster1,Cluster2,Cluster3] = separateClusters(G);
%plotkmeanspp(data_,Ci,Cluster1,Cluster2,Cluster3)
plot(SSE_e)
hold on
xlabel('Iteration')
ylabel('Sum of Squared Error (SSE)')
hold off

end