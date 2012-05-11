# language:ru
Функционал: Недвижимость -> Дома, дачи. Аренда

  Контекст:
    Когда открыта страница для региона "Москва и область"
        И на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи. Аренда"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
       | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок

  Сценарий: Фильтр по расположению
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value         |
      | Расположение | Балашихинский |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Расположение" равно "Балашихинский"

  Сценарий: Фильтр по направлению шоссе
    Когда я делаю поиск по следующим параметрам:
      | parameter   | value     |
      | Направление | Казанское |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Направление" равно "Казанское"

  Сценарий: Фильтр по шоссе
    Когда я делаю поиск по следующим параметрам:
      | parameter | value          |
      | Шоссе     | Егорьевское ш. |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Шоссе" равно "Егорьевское ш."

  Сценарий: Фильтр по удаленности
    Когда я делаю поиск по следующим параметрам:
      | parameter   | min | max |
      | Удаленность | 5   | 30  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Удаленность" >= "5"
       И в деталях первого объявления "Удаленность" =< "30"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
        | Срок сдачи     |      |        | сутки |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."
       И в каждом объявлении срок сдачи равен "сутки"

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      | Срок сдачи     |      |        | сутки |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении срок сдачи равен "сутки"

  Сценарий: Фильтр по году постройки/сдачи
    Когда я делаю поиск по следующим параметрам:
      | parameter           | min  | max  |
      | Год постройки/сдачи | 1933 | 2012 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год постройки/сдачи" >= "1933"
       И в деталях первого объявления "Год постройки/сдачи" <= "2012"

  Сценарий: Фильтр по площади участка
    Когда я делаю поиск по следующим параметрам:
      | parameter       | min | max |
      | Площадь участка | 10  | 200 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь участка" >= "10"
       И в деталях первого объявления "Площадь участка" <= "200"

  Сценарий: Фильтр по площади строения
    Когда я делаю поиск по следующим параметрам:
      | parameter        | min | max |
      | Площадь строения | 10  | 200 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь строения" >= "10"
       И в деталях первого объявления "Площадь строения" <= "200"

  Сценарий: Фильтр по количеству комнат
    Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Количество комнат | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество комнат" >= "1"
       И в деталях первого объявления "Количество комнат" <= "10"

  Сценарий: Фильтр по количеству спален
    Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Количество спален | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество спален" >= "1"
       И в деталях первого объявления "Количество спален" <= "10"

  Сценарий: Фильтр по материалу стен
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value      |
      | Материал стен | деревянный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Материал стен" равно "деревянный"

  Сценарий: Фильтр по отапливаемости
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Отапливаемый | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Отапливаемый"

  Сценарий: Фильтр по наличию гаража
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Гараж     | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Гараж"

  Сценарий: Фильтр по телефону
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Телефон   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Телефон"

  Сценарий: Фильтр по наличию интернета
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Интернет  | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Интернет"

  Сценарий: Фильтр по наличию мебели
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Мебель    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Мебель"

  Сценарий: Фильтр по наличию бытовой техники
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Бытовая техника | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Бытовая техника"

  Сценарий: Фильтр по этажам в здании
    Когда я делаю поиск по следующим параметрам:
      | parameter     | min | max |
      | Этаж в здании | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Этаж" >= "1"
       И в деталях первого объявления "Этаж" <= "10"

  Сценарий: Фильтр по строению
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Строение  | дача  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Строение" равно "дача"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Поданные  | вчера и сегодня |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 2 дней назад

@wip
@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "этаж"

@wip
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в каждом объявлении содержится "этаж"
