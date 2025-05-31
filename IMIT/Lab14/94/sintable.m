function sintable(filename)
[F, mes]=fopen(filename, 'w');
fprintf(F, 'It is new file\n');
fprintf(F, 'it is new line\n');
x=0:pi/2:2*pi;
M=[x;sin(x)];
fprintf(F, '|%7.4f|%11.5f|\n', M);
fclose(F);
end