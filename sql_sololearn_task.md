```rootsql
Задача:

Зоопарк

Вы – управляющий зоопарком. Все животные были доставлены в зоопарк из разных стран. У вас есть следующие таблицы:

Animals
<!--- таблица --->
Countries
<!--- таблица --->

1) К вам прибыло новое животное:
название - "Slim", тип - "Giraffe", country_id - 1
Добавьте его в таблицу Animals.
2) Вам необходимо сделать полный список животных для посетителей зоопарка. Напишите запрос для вывода в результат новой таблицы с указанием полей name, type и country по каждому животному и сортировкой по country.
```

```rootsql
Вспомните ключевые слова INSERT и INNER JOIN.
```

```rootsql
Решение:

INSERT INTO Animals 
VALUES ('Slim', 'Giraffe', 1);
SELECT name, type, country
FROM animals INNER JOIN Countries 
ON animals.country_id=Countries.id
order by country;

```
