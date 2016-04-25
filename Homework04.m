A = input('Input A: ')
B = input('Input B: ')

method= input('1ADD 2MINUS 3PRODUCT 4DIVIDE ')

switch method
    case 1
        A+B
    case 2
        A-B
    case 3
        A*B
    case 4
        A/B
    otherwise
        disp('Error!')
end