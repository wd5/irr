# language:ru
# encoding: utf-8
@wip
Функционал: Электроника и техника -> Техника для авто -> Парковочные радары

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Парковочные радары"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
       | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок

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

  Сценарий: Фильтр по марке
    Когда я делаю поиск по следующим параметрам:
      | parameter | value      |
      | Марка     | PARKMASTER |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "PARKMASTER"

  Сценарий: Фильтр по типу отображения
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value      |
      | Тип отображения | жк-дисплей |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип отображения" равно "жк-дисплей"

  Сценарий: Фильтр по количеству датчиков
    Когда я делаю поиск по следующим параметрам:
      | parameter           | min | max |
      | Количество датчиков | 1   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество датчиков" >= "1"
       И в деталях первого объявления "Количество датчиков" <= "100"

  Сценарий: Фильтр по расстоянию до препятствия
    Когда я делаю поиск по следующим параметрам:
      | parameter                 | min | max |
      | Расстояние до препятствия | 1   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Расстояние до препятствия" >= "1"
       И в деталях первого объявления "Расстояние до препятствия" <= "100"

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "сабвуфер"

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "сабвуфер"
