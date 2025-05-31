str='MATLAB '
substr='строк'
pos=findstr(str, substr)
str1='abc12345'
str2='abc12345'
rez=strcmp(str1, str2)
str2='ert456'
rez=strcmp(str1, str2)