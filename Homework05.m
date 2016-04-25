N = input('Input tree level: ')
str = '';
for a = 0: 1: N-1
    for b = 1: 1: a+2
        for c= 0: 1: (N - b)
            fprintf(' ');
            %str = strcat(str, ' ');
        end
        for f = 1: 1: b*2-1
            fprintf('*');
            %str = strcat(str, '*');
        end
        
        fprintf('\n');
    end
end