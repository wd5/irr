# language:ru
# encoding: utf-8
Функционал: Бизнес и партнерство -> Партнерство и сотрудничество -> Кредиты, займы

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Бизнес и партнерство -> Партнерство и сотрудничество -> Кредиты, займы"

@visible_filter
  Сценарий: Видимые фильтры
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Тип предложения |
 | Сумма займа |
| Срок кредита, лет |
| Процент, % |
| С неподтвержденным доходом |
| Экспресс-кредит |
         | Ключевые слова  |
         | С фото          |
         | С видео         |
   Когда я раскрываю список фильтров
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Тип предложения |
 | Сумма займа |
| Кредиты для физ.лиц |
| Кредиты для юр.лиц |
| Срок кредита, лет |
| Процент, % |
| Обеспечение |
| С неподтвержденным доходом |
| Экспресс-кредит |
         | Ключевые слова  |
         | С фото          |
         | С видео         |
         | Источник        |
         | Поданные        |

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по типу предложения
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value       |
      | Тип предложения | предложение |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "предложение"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min   | max     | value |
        | Цена           | 10000 | 1000000 |       |
        | Валюта         |       |         | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 10000
       И в каждом объявлении цена <= 1000000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 1000 | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 1000
       И в каждом объявлении цена <= 100000

@customfield
  Сценарий: Фильтр по кредитам для физ.лиц
   Когда я делаю поиск по следующим параметрам:
      | parameter           | value            |
      | Кредиты для физ.лиц | автокредитование |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Кредиты для физ.лиц" равно "автокредитование"

@customfield
  Сценарий: Фильтр по кредитам для юр.лиц
   Когда я делаю поиск по следующим параметрам:
      | parameter          | value  |
      | Кредиты для юр.лиц | кредит |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Кредиты для юр.лиц" равно "кредит"

@customfield
  Сценарий: Фильтр по сроку кредита, лет
   Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Срок кредита, лет | 1   | 50  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Срок кредита, лет" >= "1"
       И в деталях первого объявления "Срок кредита, лет" <= "50"

Сценарий: Фильтр по сроку кредита, лет
   Когда я делаю поиск по следующим параметрам:
      | parameter         | max     |
      | Срок кредита, лет | 5000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по проценту
   Когда я делаю поиск по следующим параметрам:
      | parameter  | min | max |
      | Процент, % | 1   | 90  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Процент, %" >= "1"
       И в деталях первого объявления "Процент, %" <= "90"

@customfield
  Сценарий: Фильтр по проценту
   Когда я делаю поиск по следующим параметрам:
      | parameter  | max      |
      | Процент, % | 10000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по обеспечению
   Когда я делаю поиск по следующим параметрам:
      | parameter   | value     |
      | Обеспечение | с залогом |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Обеспечение" равно "с залогом"

@customfield
  Сценарий: Фильтр по неподвержденности дохода
    Когда я делаю поиск по следующим параметрам:
      | parameter                  | value |
      | С неподтвержденным доходом | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "С неподтвержденным доходом"

@customfield
  Сценарий: Фильтр по экспресс-кредитам
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Экспресс-кредит | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Экспресс-кредит"

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
