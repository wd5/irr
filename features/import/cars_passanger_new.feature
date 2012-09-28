# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Авто и мото -> Легковые автомобили -> Новые автомобили

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "cars_passanger_new/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю Ауди A1" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле            | значение     |
        | Марка           | Audi         |
        | Модель          | A1           |
        | Год выпуска     | 2001 г.      |
        | Тип кузова      | купе         |
        | Тип трансмиссии | механическая |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "cars_passanger_new/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю Ауди A1" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле            | значение     |
        | Марка           | Audi         |
        | Модель          | A1           |
        | Год выпуска     | 2001 г.      |
        | Тип кузова      | купе         |
        | Тип трансмиссии | механическая |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "cars_passanger_new/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю Ауди A1 с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления со всеми кастомфилдами
    Когда я обновляю и импортирую файл "cars_passanger_new/scenario3.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю отличную Ауди A1" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле                          | значение            |
        | ABS                           | x                   |
        | ASR                           | x                   |
        | EBD                           | x                   |
        | ESP                           | x                   |
        | Handsfree                     | x                   |
        | VIN                           | 123                 |
        | Аудио                         | магнитола CD        |
        | Год выпуска                   | 2007 г.             |
        | Датчик дождя                  | x                   |
        | Датчик света                  | x                   |
        | Зеркала                       | есть                |
        | Иммобилайзер                  | x                   |
        | Кондиционер                   | есть                |
        | Круиз контроль                | x                   |
        | Люк                           | электро             |
        | Марка                         | Audi                |
        | Модель                        | A1                  |
        | Модификация                   | SLT                 |
        | Мощность двигателя            | 300 л.с.            |
        | Навигация                     | x                   |
        | Обогрев зеркал                | x                   |
        | Обогрев руля                  | x                   |
        | Обогрев сидений               | есть                |
        | Обогрев стекл                 | заднего и переднего |
        | Объем двигателя               | 3 л                 |
        | Парктроник                    | есть                |
        | Подушки безопасности          | водителя; пассажира |
        | Привод                        | передний            |
        | Противотуманные фары          | x                   |
        | Механический замок-блокиратор | на педали           |
        | Руль                          | левый               |
        | Сигнализация                  | x                   |
        | Стеклоподъемники              | передних окон       |
        | Таможня                       | растаможен          |
        | Телевизор                     | x                   |
        | Тип двигателя                 | бензин ротор        |
        | Тип кузова                    | седан               |
        | Тип трансмиссии               | механическая        |
        | Тонировка                     | x                   |
        | Усилитель руля (ГУР)          | гидроусилитель      |
        | Фары                          | ксеноновые          |
        | Цвет                          | белый               |
        | Центральный замок             | x                   |
        | Чейнджер                      | CD с MP3            |

  Сценарий: Импорт объявления в регион Бийск
    Когда я обновляю и импортирую файл "cars_passanger_new/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю Ауди A1 в Бийске" присутствует в списке
        * у объявления указан город "Бийск"
