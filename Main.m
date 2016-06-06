clc;
close all;
clear;

s = RandStream.create('mt19937ar','seed',1e3);
RandStream.setGlobalStream(s);

% Los datos se cargan en la variable dataset como una estructura
fid = fopen('iris.data', 'rt');
table = textscan(fid,'%f,%f,%f,%f,%s', 'HeaderLines', 0, 'CollectOutput', true);
fclose(fid);

x = table{1,1};
t_label = table{1,2};
[samples,columns]=size(t_label);
t =zeros(samples,columns);

for i=1:samples
    if strcmp(t_label{i,columns},'Iris-setosa')
        t(i,columns)=0;
    else if strcmp(t_label{i,columns},'Iris-versicolor')
          t(i,columns)=1;
        else
          t(i,columns)=2;
        end
    end
end

plotDataSet(x,t);

% Se construyen las particiones
NtotC = size(x(t==0,:), 1);
partitions = 5;
bin_width = NtotC/partitions;
index_val = zeros(partitions,bin_width);
index_train = zeros(partitions,NtotC - bin_width);
index = randperm(NtotC);
[index_val,index_train] = generatePartitions(index,NtotC,partitions,bin_width);
