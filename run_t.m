function[] = run_t()

%data1 = test.
%data2 = validation.

%The first step is, load the data
T = readtable('labeled_data.csv');
data_1 = table2array(T);

[data1,data2]= k_folds(data_1);

V_acc = zeros(9,1);



for j = 1 : 50
    k = j;    
    for i = 1 : 9
        n = i;
        [data11, data3]= k_folds_2(n,data1);
        [datapred] = foundBestk(data11,data3,k);

        acc = accuracy_t(datapred, data3);
        V_acc(i) = acc;
    end
    Vk_acc(j) = sum(V_acc);
end
%disp(Vk_acc)
plot(Vk_acc)
hold on
xlabel('Numbers of K')
ylabel('Accuracy')
hold off

end