# language:ru
# encoding: utf-8
Функционал: Подача объявлений неавторизированным пользователем - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления неавторизированным пользователем
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
       * в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я выхожу из текущего пользователя
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
        * я ввожу следующие данные на шаге 2:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Возможна ипотека   | x                                            |
          | Комнат в квартире: | 1                                            |
          | Общая площадь:     | 80                                           |
          | Этаж:              | 4                                            |
          | Этажей в здании:   | 8                                            |
          | Цена               | 100000                                       |
          | Валюта             | $                                            |
          | Текст              | Продаю неавторизированным пользователем      |

       * я ввожу следующие данные на шаге 2 в секции "Подробнее о здании":
          | parameter             | value       |
          | Год постройки/сдачи:  | 2003        |
          | Серия здания          | КОПЭ        |
          | Материал стен         | кирпичный   |
          | Высота потолков:      | 3           |
          | Система водоснабжения | центральная |
          | Система отопления     | центральная |
          | Газ в доме            | x           |
          | Лифты в здании        | x           |
          | Мусоропровод          | x           |
          | Охрана здания         | x           |

       * я ввожу следующие данные на шаге 2 в секции "Подробнее о квартире":
          | parameter             | value       |
          | Жилая площадь:        | 50          |
          | Площадь кухни:        | 20          |
          | Отделка               | с отделкой  |
          | Санузел               | раздельный  |
          | Телефон               | x           |
          | Интернет              | x           |
          | Балкон/Лоджия         | x           |

       * на шаге 2 я ввожу логин и пароль роли "Доверенный интернет-партнер"
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "1-комн. кв.,  4/8,  площадь:  общая 80 кв. м.,  жилая 50 кв. м.,  кухня 20 кв. м.,  с/у раздельный,  с отделкой,  балкон/лоджия,  городской телефон" присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Новостройки" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "1-комн. кв.,  4/8,  площадь:  общая 80 кв. м.,  жилая 50 кв. м.,  кухня 20 кв. м.,  с/у раздельный,  с отделкой,  балкон/лоджия,  городской телефон" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Год постройки/сдачи" равно "2003 г."
        * на вкладке "Все" "Серия здания" равно "КОПЭ"
        * на вкладке "Все" "Материал стен" равно "кирпичный"
        * на вкладке "Все" "Высота потолков" равно "3 м"
        * на вкладке "Все" "Система водоснабжения" равно "центральная"
        * на вкладке "Все" "Система отопления" равно "центральная"
        * на вкладке "Все" присутствует "Газ в доме"
        * на вкладке "Все" присутствует "Лифты в здании"
        * на вкладке "Все" присутствует "Мусоропровод"
        * на вкладке "Все" присутствует "Охрана здания"
        * на вкладке "Все" "Жилая площадь" равно "50 кв. м"
        * на вкладке "Все" "Площадь кухни" равно "20 кв. м"
        * на вкладке "Все" "Отделка" равно "с отделкой"
        * на вкладке "Все" "Санузел" равно "раздельный"
        * на вкладке "Все" присутствует "Телефон"
        * на вкладке "Все" присутствует "Интернет"
        * на вкладке "Все" присутствует "Балкон/Лоджия"
        * на вкладке "Все" присутствует "Возможна ипотека"
        * на вкладке "Все" "Комнат в квартире" равно "1"
        * на вкладке "Все" "Общая площадь" равно "80 кв. м"
        * на вкладке "Все" "Этаж" равно "4"
        * на вкладке "Все" "Этажей в здании" равно "8"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value           |
          | Поданные      | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "1 комн, 80/50/20 м2, этаж 4/8"
