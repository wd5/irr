# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Квартиры. Продажа -> Вторичная недвижимость

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_apartments-sale_secondary/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продается квартира, общая площадь: 200 кв.м., этаж 3" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Комнат в квартире" равно "3"
        * на вкладке "Все" "Общая площадь" равно "200 кв. м"
        * на вкладке "Все" "Жилая площадь" равно "70 кв. м"
        * на вкладке "Все" "Этаж" равно "3"