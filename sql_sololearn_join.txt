Напишите запрос для вывода идентификатора рейса, полное имя пилота, ответственного за рейс, страну назначения и длительность полета (flight_id, fullname, landing_country, duration).Отсортируйте таблицу по идентификатору рейса.Давайте поможем пилотам узнать подробности о своих рейсах.
Вам даны следующие таблицы pilots и flights

SELECT students.ID, students.firstname, students.lastname, teachers.lastname as teacher
FROM students, teachers 
WHERE students.teacherid=teachers.id
order by students.id

SELECT ct.ID, ct.Name, ord.Name, ord.Amount
FROM customers AS ct, orders AS ord
WHERE ct.ID=ord.Customer_ID
ORDER BY ct.ID;

Типы JOIN (объединений), которые могут быть использованы в MySQL:
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

INNER JOIN (Внутреннее Объединение) эквивалентно JOIN. Оно возвращает строки, если они совпадают в таблицах.

SELECT column_name(s)
FROM table1 INNER JOIN table2 
ON table1.column_name=table2.column_name;

Обратите внимание на ключевое слово ON, указывающее на условие внутреннего объединения.

Нижеуказанное изображение демонстрирует как работает INNER JOIN:

LEFT JOIN возвращает все строки из левой таблицы, даже, если нет соответствий в правой таблице. 

Это значит, что если нет соответствий в выражении ON в таблице справа, объединение будет возвращать строки из первой таблицы в результат.

SELECT table1.column1, table2.column2...
FROM table1 LEFT OUTER JOIN table2
ON table1.column_name = table2.column_name;

Ключевое слово OUTER опционально и может быть опущено.

Следующее SQL выражение выведет всех клиентов и все вещи, которые у них есть:

SELECT customers.Name, items.Name 
FROM customers LEFT OUTER JOIN items 
ON customers.ID=items.Seller_id;

В результате имеются все строки из левой таблицы и соответствующие данные из правой таблицы.

Если совпадение не найдено для конкретной строки, то будет возвращено значение NULL.

RIGHT JOIN возвращает все строки из правой таблицы, даже если нет соответствий в левой таблице.

SELECT table1.column1, table2.column2...
FROM table1 RIGHT OUTER JOIN table2
ON table1.column_name = table2.column_name;

SELECT customers.Name, items.Name FROM customers
RIGHT JOIN items ON customers.ID=items.Seller_id;

Объединение RIGHT JOIN возвращает все строки из правой таблицы (items), даже при отсутствии соответствий в левой таблице (customers).

Существуют и другие типы объединений в языке SQL, но они не поддерживаются в MySQL.

