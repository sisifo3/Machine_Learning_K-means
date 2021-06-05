function [NewData] = ReferenceDistribution()
%We try to generate:
%(a) generate each reference feature uniformly over the range of the observed values for that
%feature

T = readtable('dataQP.csv');
data_ = table2array(T);

len = size(data_,1);
dtn = randi(len,600,1);

NewData = data_(dtn,:);


end