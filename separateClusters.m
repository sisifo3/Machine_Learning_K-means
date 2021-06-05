function[Cluster1,Cluster2,Cluster3] = separateClusters(G)

len = size(G,1);
Gend = size(G,2);
t1 = 0;
t2 = 0;
t3 = 0;
for i = 1:len
    if G(i,Gend) == 1
        t1 = t1 + 1;
        Cluster1(t1,:) = G(i,[1 2]);
   elseif G(i,Gend) == 2
        t2 = t2 + 1;
        Cluster2(t2,:) = G(i,[1 2]);
   elseif G(i,Gend) == 3
        t3 = t3 + 1;
        Cluster3(t3,:) = G(i,[1 2]);
    end
end

disp(Cluster3)

end