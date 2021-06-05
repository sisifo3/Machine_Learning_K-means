function[Cluster] = UpdateCentroides(A,Clusters)


%Clusters = [2, 1; 3,4 ;5,4];
lenA = length(A);
lenC = length(Clusters);
sA = size(A,2);
k = 0;

for i = 1 : lenC
    for j = 1:lenA
        if A(j,sA) == i
            k = k +1;
            mB(k,1) = A(j,1);
            mB(k,2) = A(j,2);
        end
    end
    if ~isempty(mB)
        [a1,a2] = funUpdateCentroides(mB);
        Cluster(i,1) = a1;
        Cluster(i,2) = a2;
    end
    k = 0;
    mB =[];
end
    
%disp(Cluster)


end