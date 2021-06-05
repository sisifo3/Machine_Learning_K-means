function[Cluster] = Random_initialization(data_,C)
% In this function, we will make the inizialitation
% this will be of random way.
% The number of cluster for the first implementaiton is random.
% C : Number of clusters.
% Cp : Cluster index.


%T = readtable('dataQP.csv');
%data_ = table2array(T);

len = length(data_);
Ci = randi(len,C,1);

Cluster(:,:) = data_(Ci(:),:);

end