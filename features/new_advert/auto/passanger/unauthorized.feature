# language:ru
# encoding: utf-8
Функционал: Подача объявлений неавторизированным пользователем - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления неавторизированным пользователем
    Когда я выхожу из текущего пользователя
        * я перехожу к подаче объявления
        * я ввожу логин и пароль роли "Доверенный интернет-партнер"
        * я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
        * я ввожу следующие данные на шаге 2:
          | parameter            | value          |
          | Марка                | Audi           |
          | Модель               | A1             |
          | Модификация          | SKL            |
          | Цена:                | 10000          |
          | Валюта               | $              |
          | Год выпуска          | 2001           |
          | Тип кузова           | кабриолет      |
          | Тип трансмиссии      | автоматическая |
          | Тип двигателя        | дизель         |
          | Привод               | передний       |
          | Состояние автомобиля | отличное       |
          | Пробег:              | 30000          |
          | Мощность двигателя:  | 200            |
          | Объем двигателя      | 2.6            |
          | Текст                | Тест подачи объявления неавторизированным пользователем |

        * я ввожу следующие данные на шаге 2 в секции "Дополнительная информация":
          | parameter              | value            |
          | VIN:                   | 123              |
          | Цвет                   | белый металлик   |
          | Тонировка              | x                |
          | Руль                   | левый            |
          | Кондиционер            | есть             |
          | Фары                   | ксеноновые       |
          | Противотуманные фары   | x                |
          | Усилитель руля \(ГУР\) | электроусилитель |
          | Таможня                | растаможен       |

        * я ввожу следующие данные на шаге 2 в секции "Безопасность":
          | parameter                | value |
          | водителя                 | x     |
          | пассажира                | x     |
          | коленей водителя         | x     |
          | коленей пассажира        | x     |
          | боковые передние         | x     |
          | боковые задние           | x     |
          | шторки боковые           | x     |
          | Сигнализация             | x     |
          | Иммобилайзер             | x     |
          | Центральный замок        | x     |
          | Спутниковая сигнализация | x     |
          | Механический замок-блокиратор | на педали |

        * я ввожу следующие данные на шаге 2 в секции "Системы":
          | parameter  | value |
          | ABS        | x     |
          | EBD        | x     |
          | ASR        | x     |
          | ESP        | x     |

        * я ввожу следующие данные на шаге 2 в секции "Опции":
          | parameter           | value         |
          | Люк                 | электро       |
          | Парктроник          | задний        |
          | Стеклоподъемники    | передних окон |
          | Зеркала             | обогрев       |
          | Обогрев стекл       | заднего       |
          | Обогрев руля        | x             |
          | Обогрев сидений     | передних      |
          | Регулировка сидений | механическая  |
          | Автозапуск          | x             |
          | Круиз контроль      | x             |
          | Датчик дождя        | x             |
          | Датчик света        | x             |

        * я ввожу следующие данные на шаге 2 в секции "Медиа":
          | parameter  | value         |
          | Аудио      | магнитола MP3 |
          | Чейнджер   | CD с MP3      |
          | Handsfree  | x             |
          | Навигация  | x             |
          | Телевизор  | x             |
        * я перехожу на шаг 3
       То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Легковые автомобили | ВСЕ РЕГИОНЫ"
       То объявление с названием "Audi A1,  кабриолет,  2001 г. в.,  пробег:  30000 км.,  автоматическая,  2.6 л" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "10000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Марка" равно "Audi"
        * на вкладке "Все" "Модель" равно "A1"
        * на вкладке "Все" "Год выпуска" равно "2001"
        * на вкладке "Все" "Тип кузова" равно "кабриолет"
        * на вкладке "Все" "Тип трансмиссии" равно "автоматическая"
        * на вкладке "Все" "Тип двигателя" равно "дизель"
        * на вкладке "Все" "Привод" равно "передний"
        * на вкладке "Все" "Пробег" равно "30000"
        * на вкладке "Все" "Мощность двигателя" равно "200"
        * на вкладке "Все" "Объем двигателя" равно "2.6"
        * на вкладке "Все" "Модификация" равно "SKL"
        * на вкладке "Все" "Состояние автомобиля" равно "отличное"

        * на вкладке "Все" "Руль" равно "левый"
        * на вкладке "Все" "VIN" равно "123"
        * на вкладке "Все" "Цвет" равно "белый металлик"
        * на вкладке "Все" присутствует "Тонировка"
        * на вкладке "Все" "Кондиционер" равно "есть"
        * на вкладке "Все" "Фары" равно "ксеноновые"
        * на вкладке "Все" присутствует "Противотуманные фары"
        * на вкладке "Все" "Усилитель руля (ГУР)" равно "электроусилитель"
        * на вкладке "Все" "Таможня" равно "растаможен"

        * на вкладке "Все" "Подушки безопасности" равно "водителя; пассажира; коленей водителя; коленей пассажира; боковые передние; боковые задние; шторки боковые"
        * на вкладке "Все" присутствует "Сигнализация"
        * на вкладке "Все" присутствует "Иммобилайзер"
        * на вкладке "Все" присутствует "Центральный замок"
        * на вкладке "Все" присутствует "Спутниковая сигнализация"
        * на вкладке "Все" "Механический замок-блокиратор" равно "на педали"

        * на вкладке "Все" присутствует "ABS"
        * на вкладке "Все" присутствует "EBD"
        * на вкладке "Все" присутствует "ASR"
        * на вкладке "Все" присутствует "ESP"

        * на вкладке "Все" "Люк" равно "электро"
        * на вкладке "Все" "Парктроник" равно "задний"
        * на вкладке "Все" "Стеклоподъемники" равно "передних окон"
        * на вкладке "Все" "Зеркала" равно "обогрев"
        * на вкладке "Все" "Обогрев стекл" равно "заднего"
        * на вкладке "Все" присутствует "Обогрев руля"
        * на вкладке "Все" "Обогрев сидений" равно "передних"
        * на вкладке "Все" "Регулировка сидений" равно "механическая"
        * на вкладке "Все" присутствует "Автозапуск"
        * на вкладке "Все" присутствует "Круиз контроль"
        * на вкладке "Все" присутствует "Датчик дождя"
        * на вкладке "Все" присутствует "Датчик света"

        * на вкладке "Все" "Аудио" равно "магнитола MP3"
        * на вкладке "Все" "Чейнджер" равно "CD с MP3"
        * на вкладке "Все" присутствует "Handsfree"
        * на вкладке "Все" присутствует "Навигация"
        * на вкладке "Все" присутствует "Телевизор"

@after_index
  Сценарий: Проверка индексации объявления
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | Audi    |
          | Модель    | A1      |
          | Поданные  | сегодня |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "Audi A1,  кабриолет,  2001 г. в.,  пробег:  30000 км.,  автоматическая,  2.6 л"
