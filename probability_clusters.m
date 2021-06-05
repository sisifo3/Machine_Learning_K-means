function[next_cluster] = probability_clusters(data_,C1)
%The first step is, load the data
%T = readtable('dataQP.csv');
%data_ = table2array(T);



%Select the first Cluster Random
%len = length(data_);
%Ct = randi(len,1,1);
%C1 = data_(Ct,:);

%Evaluete the distance.
values = eval_eucli_dis(data_,C1);

%Evaluete probability and index of next cluster
index =  eval_probab_clus(values);

%disp(values)

next_cluster = data_(index,:);

end