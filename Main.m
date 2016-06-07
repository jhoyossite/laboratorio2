% se limpian los datos anteriores
clc;
close all;
clear;

% Se genera una semilla para la generación de las validaciones
s = RandStream.create('mt19937ar','seed',1e3);
%RandStream.setGlobalStream(s);
RandStream.setDefaultStream(s); % Version MATLAB 2010

% Se cargan y se grafican los datos
[x, t] = loadData('iris.data.txt');
plotDataSet(x,t);

% Se construyen las particiones,datos de validacion y de entrenamiento, las
% particiones se generan con la función generatePartitions, la cual recibe
% en su último parametro un 0 que realiza las particiones basado en todos
% los datos, o un 1 que realiza particiones por clase, sacando la misma
% cantidad de datos de todas las clase
Ntot       = size(x, 1);
NtotC      = size(x(t==0,:), 1);
partitions = 5;

[xDataTrain, tDataTrain, xDataTest, tDataTest] = generatePartitions(partitions, Ntot, NtotC, x, t, 1);
