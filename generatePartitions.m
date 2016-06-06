function [index_val,index_train] = generatePartitions(index,NtotC,P,B)
    start_index = 1;
    end_index = B;
    
    for i=1:P
        index_val(i,:) = index(start_index:end_index);
        start_index=start_index+B;
        end_index=end_index+B;
    end
    
    start_index = 1;
    end_index = B;
    
    for i=1:P
        index_aux=index;
        index_aux([start_index:end_index])=[];
        index_train(i,:)=index_aux;
        index_aux=[];
        start_index=start_index+B;
        end_index=end_index+B;
    end
end

