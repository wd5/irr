# language:ru
# encoding: utf-8
Функционал: Подача объявления с фото - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value             |
          | Улица                      | Интернациональная |
          | Дом                        | 10                |
          | Ближайшее метро            | Белорусская м.    |
          | До метро                   | 5                 |
          | Приватизированная квартира | x                 |
          | Комнат в квартире:         | 5                 |
          | Общая площадь:             | 500               |
          | Этаж:                      | 5                 |
          | Цена                       | 500000            |
          | Валюта                     | $                 |
          | Текст                      | Продаю с фото     |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "5-комн.  квартира,  Интернациональная ул,  10, 5, площадь:  общая 500 кв. м., приватизированная" присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "5-комн.  квартира,  Интернациональная ул,  10, 5, площадь:  общая 500 кв. м., приватизированная" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "500000" в долларах
        * у объявления отображается загруженная фотография
    Когда на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня         |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "5 комн, 500 м2, этаж 5"
