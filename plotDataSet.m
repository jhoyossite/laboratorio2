function [] = plotDataSet(x,t)
    % Se grafica cada una de las clases en funcion de los atributos
    figure
    plot(x(t==0,1),x(t==0,2),'rx','markersize', 10, 'linewidth', 1.5);
    hold on
    plot(x(t==1,1),x(t==1,2),'gx','markersize', 10, 'linewidth', 1.5);
    hold on
    plot(x(t==2,1),x(t==2,2),'bx','markersize', 10, 'linewidth', 1.5);
    xlabel('sepal length');
    ylabel('sepal width');
    legend('Iris Setosa','Iris Versicolour','Iris Virginica')
    title('Original Data')

    figure
    plot(x(t==0,3),x(t==0,4),'rx','markersize', 10, 'linewidth', 1.5);
    hold on
    plot(x(t==1,3),x(t==1,4),'gx','markersize', 10, 'linewidth', 1.5);
    hold on
    plot(x(t==2,3),x(t==2,4),'bx','markersize', 10, 'linewidth', 1.5);
    xlabel('petal length');
    ylabel('petal width');
    legend('Iris Setosa','Iris Versicolour','Iris Virginica')
    title('Original Data')
end

