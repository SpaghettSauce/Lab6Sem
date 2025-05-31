names={'Иван', 'Олег', 'Пётр'}
names(1)
names(3)
surnames={'Иванов', 'Васильев', 'Петров'}
surnames1=char('Иванов', 'Васильев', 'Петров')
surnames=char(surnames1, 'Сидоров')
ind=strmatch('pos', surnames)
ind=strmatch('Сид', surnames)
ind=strmatch('Сид', surnames, 'exact')
ind=strmatch('Васильев', surnames, 'exact')