```roomsql
Вставка Информации
```

```roomsql
Таблицы SQL хранят данные в строках, одна строка после другой. Выражение INSERT INTO используется для добавления новых строк информации в таблицу базы данных.
```

Синтаксис SQL INSERT INTO выглядит так:

INSERT INTO table_name
VALUES (value1, value2, value3,...);

```roomsql
Убедитесь, что значения находятся в том же порядке, что и столбцы в таблице.
```

Используйте следующее SQL выражение для вставки новой строки:

INSERT INTO Employees 
VALUES (8, 'Anthony', 'Young', 35);
SELECT * from Employees;

Значения разделяются запятыми, а их порядок соответствует столбцам в таблице.

```roomsql
При вставке записей в таблицу с помощью выражения SQL INSERT, вы должны предоставить значения для каждого столбца, который не имеет значения по умолчанию, или не поддерживает NULL.
```

```roomsql
Вставка Информации
```

В качестве альтернативы, вы можете указать названия столбцов таблицы в выражении INSERT INTO:

INSERT INTO table_name (column1, column2, column3, ...,columnN)  
VALUES (value1, value2, value3,...valueN);

column1, column2, ..., columnN являются названиями столбцов, в которые вы хотите вставить данные.

INSERT INTO Employees (ID, FirstName, LastName, Age)
VALUES (8, 'Anthony', 'Young', 35);
SELECT * FROM Employees; 

```roomsql
Вы можете определить свой собственный порядок столбцов, до тех пор, как значения указаны в том же порядке, что и столбцы.
```

Также является возможным вставка информации только в указанные столбцы.

INSERT INTO Employees (ID, FirstName, LastName) 
VALUES (9, 'Samuel', 'Clark');
SELECT * from Employees;

Столбец Age для этой строки автоматически становится 0, так как это его значение по умолчанию.

