```rootsql
ALTER TABLE
```

Команда ALTER TABLE используется для добавления, удаления, модифицирования столбцов в существующей таблице.
Вы также можете использовать команду ALTER TABLE для добавления и удаления различных ограничений у существующей таблицы.

Следующий SQL код добавляет новый столбец DateOfBirth:
```rootsql
ALTER TABLE People ADD DateOfBirth date;
SELECT * from People;
```
```rootsql
Все строки будут иметь значение по умолчанию в новом созданном столбце, которое, в данном случае, является NULL.
```

```rootsql
Задача:
У Джессики есть список городов, где она была:
cities
<!--- таблица --->
Она собирается добавить наиболее понравившиеся ей места, которые она посетила в каждом городе.
Добавьте новый столбец 'AttractivePlace' и обновите его значения:
- 'Belem Tower' в Lisbon
- 'Plaza Mayor' в Madrid
- 'Eiffel Tower' в Paris

Отобразите итоговую таблицу.
```

```rootsql
Используйте команду ALTER TABLE для добавления нового столбца и команду UPDATE для обновления значений новых полей.
```

```rootsql
Решение:

ALTER TABLE cities ADD AttractivePlace varchar(225);
UPDATE cities 
SET AttractivePlace='Belem Tower'
WHERE name='Lisbon';
UPDATE cities 
SET AttractivePlace='Plaza Mayor'
WHERE name='Madrid';
UPDATE cities 
SET AttractivePlace='Eiffel Tower'
WHERE name='Paris';
SELECT * from cities;
```

```rootsql
СБРОС
```
Следующий SQL код демонстрирует, как удалить столбец DateOfBirth в таблице People.

```rootsql
ALTER TABLE People 
DROP COLUMN DateOfBirth;
SELECT * from People;
```

```rootsql
Столбец, вместе со всеми его данными, будет полностью удален из таблицы.
```

```rootsql
Чтобы удалить целую таблицу, используйте команду DROP TABLE:
DROP TABLE People
```

```rootsql
Будьте осторожны при сбросе таблицы. 
Удаление таблицы приведет к полной потере информации, хранящейся в таблице!
```

```rootsql
ПЕРЕИМЕНОВАНИЕ
```

Команда ALTER TABLE также используется для переименования столбцов:
```rootsql
ALTER TABLE People
RENAME FirstName TO name;
SELECT * from People;
```
Этот запрос переименует столбец FirstName на name

Вы можете переименовать полную таблицу, с помощью команды RENAME:
```rootsql
RENAME TABLE People TO Users;
```

```rootsql
Таким образом, таблица People будет переименована на Users.
```