function [Wk] = withinCluster(Dr,nr)
%nr = number of observation in a cluster
%Dr = sum of the distance 
%W_k = \sum_{r=1}^k \frac{1}{2n_r} D_r


a = (1./(2.*nr));
b = a.*Dr;
Wk = sum(b);
%Wk =  sum((1./(2.* nr)) .* Dr;

end