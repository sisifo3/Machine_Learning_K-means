function [] = main_n1()

data_R = readtable('less_date.csv');

Mv = 14341;

[dataTe] = get_set_description(Mv,data_R);


%writetable(dataTe,'dataclean.csv')

end