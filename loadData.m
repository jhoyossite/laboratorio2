function [ x, t ] = loadData( name )

    % Los datos se cargan en la variable dataset como una estructura
    fid = fopen(name, 'rt');
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
end

