function sintable(filename)
[F, mes]=fopen(filename, 'w');
fprintf(F, 'It is new file\n');
fprintf(F, 'it is new line\n');
fclose(F);
end