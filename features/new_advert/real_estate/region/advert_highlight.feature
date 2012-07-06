# language:ru
# encoding: utf-8
Функционал: Выделение объявления - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 3                                            |
          | Общая площадь:     | 300                                          |
          | Этаж:              | 3                                            |
          | Цена:              | 300000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест выделения объявления                    |
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
        * в ЛК ИП я выбираю регион "Все регионы"
       То объявление с названием "3-комн. кв.,  3,  площадь:  общая 300 кв. м." присутствует в списке
        * в ЛК ИП я запоминаю значение поля "Выделение"
        * я выделяю данное объявление
       То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
        * в ЛК ИП данное объявление выделено

    Когда я открываю детали этого объявления
        * на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации объявления - поиск по району
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "3-комн. кв.,  Осинский р-н,  Усть-Алтан с,  3,  площадь:  общая 300 кв. м."
       * в списке обычных объявлений объявление "3-комн. кв.,  Осинский р-н,  Усть-Алтан с,  3,  площадь:  общая 300 кв. м." выделено
