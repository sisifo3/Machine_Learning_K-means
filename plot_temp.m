function [] = plot_temp()

data_R = readtable('dataclean.csv');

disp(data_R(1,:))

a = data_R(:,4);
A = table2array(a);
b = data_R(:,5);
B = table2array(b);

plot(A,B,'*')
hold on
xlabel('Price')
ylabel('Quantity')
hold off

data_(:,1) = A;
data_(:,2) = B;

%disp(data_)
data_(sum(isnan(data_), 2) == 1, :) = [];
%disp(data_)
%[r, ~] = find(data_(:,:)==);
%ind = ~isnan(data_);
%Columns = data_(ind);
%disp(Columns)
csvwrite('dataQP.csv',data_)


end