# language:ru
# encoding: utf-8
Функционал: Подача объявлений неавторизированным пользователем - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления неавторизированным пользователем
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я выхожу из текущего пользователя
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
        * я ввожу следующие данные на шаге 2:
          | parameter            | value            |
          | Регион               | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт     | Усть-Алтан       |
          | Марка                | DAF              |
          | Модель               | F1700            |
          | Заголовок:           | Продаю DAF F1700 |
          | Цена                 | 10000            |
          | Валюта               | $                |
          | Объем двигателя:     | 10               |
          | Пробег:              | 10000            |
          | Мощность двигателя   | 100              |
          | Новый или подержанный| новый            |
          | Год выпуска          | 2001             |
          | Тип кузова           | контейнеровоз    |
          | Тип кабины           | 3-х местная с 2 спальным |
          | Тип трансмиссии      | вариатор         |
          | Тип топлива          | дизель           |
          | Грузоподъемность:    | 10               |
          | Состояние автомобиля | отличное         |
          | Текст                | Продаю DAF       |

        * я ввожу следующие данные на шаге 2 в секции "Дополнительная информация":
          | parameter              | value            |
          | Руль                   | левый            |
          | Спальных мест:         | 2                |
          | Цвет                   | белый металлик   |
          | Объем бака             | 50               |
          | Состояние резины       | отличное         |
          | Растаможен             | x                |
          | Без пробега по РФ      | x                |
          | Битый                  | x                |
          | Возможен торг          | x                |

        * я ввожу следующие данные на шаге 2 в секции "Опции":
          | parameter            | value         |
          | Эл. Стеклоподъемники | все           |
          | Подушки безопасности | 2             |
          | Магнитола            | магнитола MP3 |
          | Ретардер             | x             |
          | Круиз контроль       | x             |
          | Кондиционер          | x             |
          | ABS                  | x             |
          | Сигнализация         | x             |

        * на шаге 2 я ввожу логин и пароль роли "Доверенный интернет-партнер"
        * я перехожу на шаг 3
       То в ЛК ИП открыт список объявлений пользователя
        * в ЛК ИП объявление с названием "Продаю DAF F1700" присутствует в списке
        * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" увеличился на 1
        * счетчик объявлений пользователя увеличился на 1
        * счетчик объявлений во всех разделах увеличился на 1
        * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1

   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Продаю DAF F1700" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "10000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Марка" равно "DAF"
        * на вкладке "Все" "Модель" равно "F1700"
        * на вкладке "Все" "Объем двигателя" равно "10"
        * на вкладке "Все" "Пробег" равно "10000"
        * на вкладке "Все" "Мощность двигателя, л.с." равно "100"
        * на вкладке "Все" "Год выпуска" равно "2001"
        * на вкладке "Все" "Тип кузова" равно "контейнеровоз"
        * на вкладке "Все" "Тип кабины" равно "3-х местная с 2 спальным"
        * на вкладке "Все" "Тип трансмиссии" равно "вариатор"
        * на вкладке "Все" "Тип топлива" равно "дизель"
        * на вкладке "Все" "Грузоподъемность" равно "10"
        * на вкладке "Все" "Состояние автомобиля" равно "отличное"

        * на вкладке "Все" "Руль" равно "левый"
        * на вкладке "Все" "Спальных мест" равно "2"
        * на вкладке "Все" "Цвет" равно "белый металлик"
        * на вкладке "Все" "Объем бака" равно "50"
        * на вкладке "Все" "Состояние резины" равно "отличное"
        * на вкладке "Все" присутствует "Растаможен"
        * на вкладке "Все" присутствует "Без пробега по РФ"
        * на вкладке "Все" присутствует "Битый"
        * на вкладке "Все" присутствует "Возможен торг"

        * на вкладке "Все" "Эл. Стеклоподъемники" равно "все"
        * на вкладке "Все" "Подушки безопасности" равно "2"
        * на вкладке "Все" "Магнитола" равно "магнитола MP3"
        * на вкладке "Все" присутствует "Ретардер"
        * на вкладке "Все" присутствует "Круиз контроль"
        * на вкладке "Все" присутствует "ABS"
        * на вкладке "Все" присутствует "Сигнализация"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | DAF             |
          | Модель    | F1700           |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Продаю DAF F1700"
