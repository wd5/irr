# language:ru
Функционал: Авто и мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок

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

@bugs @bug33722
  Сценарий: Фильтр по году выпуска
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" в границах "1933 - 2012"

  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Марка     | Audi  |
      | Модель    | A4    |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Audi"
       И в деталях первого объявления "Модель" равно "A4"

  Сценарий: Фильтр по типу кузова
   Когда я делаю поиск по следующим параметрам:
      | parameter  | value   |
      | Тип кузова | лимузин |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип кузова" равно "лимузин"

  Сценарий: Фильтр по типу двигателя
   Когда я делаю поиск по следующим параметрам:
      | parameter     | value  |
      | Тип двигателя | дизель |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип двигателя" равно "дизель"

  Сценарий: Фильтр по типу привода
   Когда я делаю поиск по следующим параметрам:
      | parameter   | value    |
      | Тип привода | передний |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Привод" равно "передний"

  Сценарий: Фильтр по типу трансмиссии
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value        |
      | Тип трансмиссии | механическая |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип трансмиссии" равно "механическая"

@bugs @bug33722
  Сценарий: Фильтр по пробегу
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max   |
      | Пробег    | 10  | 20000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Пробег" в границах "10 - 20000"

  Сценарий: Фильтр по наличию фото
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

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

  Сценарий: Фильтр по времени подачи
   Когда я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Поданные  | вчера и сегодня |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 2 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "форд"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится одно из "ford, форд"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "форд"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в каждом объявлении содержится одно из "ford, форд"