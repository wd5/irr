# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Сантехника -> Душевые кабины

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Строительство и ремонт -> Сантехника -> Душевые кабины"

@all_results
  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
       | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по типу предложения
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по состоянию
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Состояние" равно "новый"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@customfield
  Сценарий: Фильтр по типу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Тип       | закрытая кабина |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип" равно "закрытая кабина"

@customfield
  Сценарий: Фильтр по марке
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Марка     | Appollo |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Appollo"

@customfield
  Сценарий: Фильтр по длине
   Когда я делаю поиск по следующим параметрам:
      | parameter | min  | max     |
      | Длина     | 1000 | 1000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Длина" >= "1000"
       И в деталях первого объявления "Длина" <= "1000000"

@customfield
  Сценарий: Фильтр по длине
   Когда я делаю поиск по следующим параметрам:
      | parameter | max     |
      | Длина     | 1000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по ширине
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max   |
      | Ширина    | 100 | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ширина" >= "100"
       И в деталях первого объявления "Ширина" <= "10000"

@customfield
  Сценарий: Фильтр по ширине
   Когда я делаю поиск по следующим параметрам:
      | parameter | max      |
      | Ширина    | 10000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по высоте
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max   |
      | Высота    | 100 | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Высота" >= "100"
       И в деталях первого объявления "Высота" <= "10000"

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
