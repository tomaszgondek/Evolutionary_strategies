
range = 5;
filename = 'AI_LAB_01/outputs.xlsx';
population = 100;
Data100 = ones(range, 6);
Data500 = ones(range, 6);
Data1000 = ones(range, 6);

for i=1:range
    Data100(i,:) = Functionalized_code(100);
end
for i=1:range
    Data500(i,:) = Functionalized_code(500);
end
for i=1:range
    Data1000(i,:) = Functionalized_code(1000);
end

Data = [Data100; Data500; Data1000];

tabularData = array2table(Data);
tabularData.Properties.VariableNames = ["Generation", "MSE", "a", "b", "c", "time"];
writetable(tabularData, filename);
