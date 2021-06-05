function[] = plot_new_clusters(data_,Clusters)

plot(data_(:,1),data_(:,2),'*')
hold on
plot(Clusters(:,1),Clusters(:,2),'o')
hold off



end