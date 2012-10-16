# language:ru
# encoding: utf-8
Функционал: Телефоны и связь -> Мобильная связь -> Мобильные телефоны

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Телефоны и связь -> Мобильная связь -> Мобильные телефоны"

@visible_filter
  Сценарий: Видимые фильтры
       * в списке фильтров показаны следующие фильтры:
         | фильтр               |
         | Тип предложения      |
         | Состояние            |
         | Марка и модель       |
         | Смартфон             |
         | Поддержка 2 sim-карт |
         | Гарантия             |
         | Цена                 |
         | Ключевые слова       |
         | С фото               |
         | С видео              |
   Когда я раскрываю список фильтров
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Тип предложения |
         | Состояние       |
          | Марка и модель |
| Тип корпуса |
| Смартфон |
| Поддержка 2 sim-карт |
| Гарантия |
         | Цена            |
         | Ключевые слова  |
         | С фото          |
         | С видео         |
         | Источник        |
         | Поданные        |


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
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Марка     | Samsung     |
      | Модель    | Galaxy S II |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Samsung"
       И в деталях первого объявления "Модель" равно "Galaxy S II"

@customfield
  Сценарий: Фильтр по типу корпуса
   Когда я делаю поиск по следующим параметрам:
      | parameter   | value        |
      | Тип корпуса | классический |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип корпуса" равно "классический"

@customfield
  Сценарий: Фильтр по смартфону
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Смартфон  | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Смартфон"

@customfield
  Сценарий: Фильтр по поддержке 2 sim-карт
   Когда я делаю поиск по следующим параметрам:
      | parameter            | value |
      | Поддержка 2 sim-карт | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Поддержка 2 sim-карт"

@customfield
@bugs @bug34097
  Сценарий: Фильтр по гарантии
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Гарантия  | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Гарантия" равно "на гарантии"

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
