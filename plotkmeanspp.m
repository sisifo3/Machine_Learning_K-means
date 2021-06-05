function [] = plotkmeanspp(data_,clusters,Cluster1,Cluster2,Cluster3)
%{
    b     blue
    g     green
    r     red
    c     cyan
    m     magenta
    y     yellow
    k     black
    w     white
%}
a= data_(:,1);
b = data_(:,2);

ac = clusters(:,1);
bc = clusters(:,2);
plot(a,b,'*r')
hold on
xlabel('Quantity')
ylabel('Price')
plot(ac,bc,'ob')
plot(clusters(1,1),clusters(1,2),'ob')
plot(Cluster1(:,1),Cluster1(:,2),'*b')

plot(clusters(2,1),clusters(2,2),'og')
plot(Cluster2(:,1),Cluster2(:,2),'*g')


plot(clusters(3,1),clusters(3,2),'or')
plot(Cluster3(:,1),Cluster3(:,2),'*r')
hold off



end