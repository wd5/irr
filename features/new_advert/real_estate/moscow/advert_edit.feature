# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"

@advert_submit
  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Регион                     | Москва               |
          | Населённый пункт           | Москва               |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 1                    |
          | Общая площадь:             | 100                  |
          | Этаж:                      | 4                    |
          | Этажей в здании:           | 8                    |
          | Цена                       | 100000               |
          | Валюта                     | $                    |
          | Текст                      | Тест редактирования объявления |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "1-комн.  квартира,   Интернациональная ул,   10,  4/8,  площадь:  общая 100 кв. м.,  приватизированная" присутствует в списке
   Когда я редактирую данное объявление
       * я ввожу следующие данные на шаге 2 (старая подача):
          | parameter          | value  |
          | Комнат в квартире: | 2      |
          | Общая площадь:     | 200    |
          | Этаж:              | 2      |
          | Этажей в здании:   | 10     |
          | Цена               | 200000 |
       * я сохраняю редактируемое объявление
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" не изменился
       * в ЛК ИП объявление с названием "2-комн.  квартира,   Интернациональная ул,   10,  2/10,  площадь:  общая 200 кв. м.,  приватизированная" присутствует в списке
       * счетчик объявлений пользователя не изменился
       * счетчик объявлений во всех разделах не изменился
       * счетчик количества размещенных объявлений в ЛК ИП не изменился
    Когда я открываю детали этого объявления
        * счетчик количества активных объявлений продавца не изменился

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "2-комн.  квартира,   Интернациональная ул,   10,  2/10,  площадь:  общая 200 кв. м.,  приватизированная" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "200000" в долларах
    Когда я открываю детали этого объявления
       То на вкладке "Все" "Комнат в квартире" равно "2"
        * на вкладке "Все" "Общая площадь" равно "200 кв.м"
        * на вкладке "Все" "Этаж" равно "2"
        * на вкладке "Все" "Этажей в здании" равно "10"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "2 комн, 200 м2, этаж 2/10"
