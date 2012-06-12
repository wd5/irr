# language:ru
# encoding: utf-8
Функционал: Работа и образование -> Резюме: поиск работы -> Обслуживающий персонал, секретариат, АХО

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Работа и образование -> Резюме: поиск работы -> Обслуживающий персонал, секретариат, АХО"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по специализации
   Когда я делаю поиск по следующим параметрам:
      | parameter     | value   |
      | Специализация | ресепшн |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Специализация" содержит "ресепшн"

  Сценарий: Фильтр по зарплате
    Когда я делаю поиск по следующим параметрам:
        | parameter | min | max     | value |
        | Зарплата  | 100 | 1000000 |       |
        | Валюта    |     |         |  руб. |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении зарплата >= 100
       И в каждом объявлении зарплата <= 1000000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
        | parameter | min | max     | value |
        | Зарплата  | 100 | 1000000 |       |
        | Валюта    |     |         | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении зарплата >= 100
       И в каждом объявлении зарплата <= 1000000
       И в каждом объявлении валюта равна "$"

  Сценарий: Фильтр по режиму работы
   Когда я делаю поиск по следующим параметрам:
      | parameter    | value       |
      | Режим работы | полный день |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Режим работы" равно "полный день"

  Сценарий: Фильтр по типу занятости
   Когда я делаю поиск по следующим параметрам:
      | parameter     | value      |
      | Тип занятости | постоянная |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип занятости" равно "постоянная"

  Сценарий: Фильтр по полу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Пол       | мужской |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Пол" равно "мужской"

  Сценарий: Фильтр по возрасту
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max |
      | Возраст   | 18  | 65  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Возраст" >= "18"
       И в деталях первого объявления "Возраст" <= "65"

  Сценарий: Фильтр по образованию
   Когда я делаю поиск по следующим параметрам:
      | parameter   | value  |
      | Образование | высшее |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Образование" равно "высшее"

  Сценарий: Фильтр по иностранному языку
   Когда я делаю поиск по следующим параметрам:
      | parameter         | value      |
      | Иностранные языки | английский |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Иностранные языки" равно "английский"

  Сценарий: Фильтр по водительским правам
   Когда я делаю поиск по следующим параметрам:
      | parameter          | value |
      | Водительские права | B     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Водительские права" равно "B"

  Сценарий: Фильтр по личному автомобилю
   Когда я делаю поиск по следующим параметрам:
      | parameter         | value |
      | Личный автомобиль | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Личный автомобиль"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

@empty_results
  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

@empty_results
  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "память"

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "память"


