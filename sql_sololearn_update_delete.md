```roomsql
Обновление Данных
```

Выражение UPDATE позволяет нам изменять данные в таблице.

Базовый синтаксис запроса UPDATE с выражением WHERE выглядит следующим образом:
UPDATE table_name
SET column1=value1, column2=value2, ...
WHERE condition;

Вы указываете столбец и его новое значение в разделенном запятыми списке после ключевого слова SET.

```roomsql
Если вы опустите условие WHERE, то все записи в таблице будут обновлены!
```

Также можно обновлять несколько столбцов одновременно, разделяя их запятыми:

UPDATE Employees 
SET Salary=5000, FirstName='Robert'
WHERE ID=1;
SELECT * from Employees;

```roomsql
Вы можете определить порядок столбцов любым образом в выражении SET.
```

```roomsql
Удаление Данных
```

Выражение DELETE используется для удаления данных из вашей таблицы. Запросы DELETE работают похожим образом на UPDATE запросы.

DELETE FROM table_name
WHERE condition;

Например, вы можете удалить определенного работника из таблицы:

DELETE FROM Employees
WHERE ID=1;
SELECT * from Employees;

```roomsql
Если вы опустите выражение WHERE, то все записи в таблице будут удалены!
Выражение DELETE удаляет данные из таблицы навсегда.
```