# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Авто и мото -> Коммерческий транспорт -> Автобусы

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "cars_commercial_buses/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю автобус" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "10000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Новый или подержанный" равно "б/у"
        * на вкладке "Все" "Год выпуска" равно "2005"
        * на вкладке "Все" "Пробег" равно "5000 км"
        * на вкладке "Все" "Объем двигателя" равно "5 л"
