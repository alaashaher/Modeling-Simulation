[num , txt , raw ] = xlsread('ocr1.xlsx');
letter  = input('Enter U R Letter : ','s')
x= upper (letter);
fprintf ('U Entered : %c \t\n' ,x);
fprintf ('char -> Character\t\n');
fprintf ('h -> Horizontal lines\t\n');
fprintf ('v -> Vertical  lines\t\n');
fprintf ('r -> Right Oblique lines\t\n');
fprintf ('l -> Left Oblique lines\t\n');
fprintf ('c -> Curved Line\t\n');
p = strcmpi(letter,raw(:));
rowNum = find(p==1)
display(rowNum);
display(raw(1,:));
display(raw(rowNum,:));