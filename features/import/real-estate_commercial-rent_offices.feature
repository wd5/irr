# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Коммерческая. Аренда -> Офисы

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_commercial-rent_offices/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Сдается офис, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "300000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Общая площадь" равно "200 кв.м"
