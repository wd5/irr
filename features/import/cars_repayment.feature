# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Авто и мото -> Выкуп автомобилей. Спрос

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "cars_repayment/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Покупаю Ауди" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле           | значение |
        | Тип автомобиля | легковой |
        | Состояние      | битая    |
        | Автомобили     | русские  |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "cars_repayment/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Покупаю Ауди" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле           | значение |
        | Тип автомобиля | легковой |
        | Состояние      | битая    |
        | Автомобили     | русские  |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "cars_repayment/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Покупаю Ауди с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления в Бийск
    Когда я обновляю и импортирую файл "cars_repayment/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Покупаю Ауди в Бийске" присутствует в списке
        * у объявления указан город "Бийск"
