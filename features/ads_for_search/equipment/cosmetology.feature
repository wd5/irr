# language:ru
# encoding: utf-8
Функционал: Оборудование -> Оборудование для сферы услуг

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Пищевое"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value            |
          | Цена:             | 15000            |
          | Валюта            | руб.             |
          | Текст             | Продаю кофеварку |
          | Тип предложения   | продам           |
          | Заголовок         | Продаю кофеварку |
          | Состояние         | новый            |
          | Тип оборудования  | для напитков     |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю кофеварку" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Тип оборудования" равно "для напитков"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Косметологическое и медицинское"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value          |
          | Цена:             | 15000          |
          | Валюта            | руб.           |
          | Текст             | Продаю солярий |
          | Тип предложения   | продам         |
          | Заголовок         | Продаю солярий |
          | Тип оборудования  | солярии        |
          | Состояние         | новый          |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю солярий" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Тип оборудования" равно "солярии"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 3
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Чистящая и моющая техника"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value              |
          | Цена:             | 1000               |
          | Валюта            | $                  |
          | Текст             | Продаю пылесос     |
          | Тип предложения   | продам             |
          | Заголовок         | Продаю пылесос     |
          | Вид               | поломоечные машины |
          | Состояние         | новый              |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю пылесос" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "поломоечные машины"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 4
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Электрооборудование для кафе"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value         |
          | Цена:             | 1000          |
          | Валюта            | $             |
          | Текст             | Продаю миксер |
          | Тип предложения   | продам        |
          | Заголовок         | Продаю миксер |
          | Вид               | миксеры       |
          | Состояние         | новый         |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю миксер" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "миксеры"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 5
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Оборудование для автосервиса"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value         |
          | Цена:             | 1000          |
          | Валюта            | $             |
          | Текст             | Продаю оборудование для автосервиса|
          | Тип предложения   | продам        |
          | Заголовок         | Продаю оборудование для автосервиса|
          | Вид               | подъемное     |
          | Состояние         | новый         |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю оборудование для автосервиса" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "подъемное"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 6
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Прочее оборудование для кафе, ресторанов"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value         |
          | Цена:             | 15000         |
          | Валюта            | руб.          |
          | Текст             | Продаю оборудование для кафе |
          | Тип предложения   | продам        |
          | Заголовок         | Продаю оборудование для кафе |
          | Вид               | посудомоечное |
          | Состояние         | новый         |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю оборудование для кафе" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "посудомоечное"
        * на вкладке "Все" "Состояние" равно "новый"

  Сценарий: Объявление 7
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Тепловое оборудование для кафе"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value         |
          | Мощность, кВт:    | 220           |
          | Напряжение, В:    | 220           |
          | Высота, см:       | 150           |
          | Ширина,см:        | 150           |
          | Глубина, см:      | 150           |
          | Вес, кг:          | 15            |
          | Цена:             | 15000         |
          | Валюта            | руб.          |
          | Текст             | Продаю кипятильник |
          | Тип предложения   | продам        |
          | Заголовок         | Продаю кипятильник |
          | Вид               | кипятильники  |
          | Состояние         | новый         |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю кипятильник" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "кипятильники"
        * на вкладке "Все" "Состояние" равно "новый"
        # Баг 37177 http://tp.prontosoft.by/Project/QA/Bug/View.aspx?BugID=37177&ProjectID=23025 
        #* на вкладке "Все" "Мощность, кВт" равно "220"
        * на вкладке "Все" "Напряжение, В" равно "220"

  Сценарий: Объявление 8
   Когда я подаю объявление в категорию "Оборудование -> Оборудование для сферы услуг -> Швейное оборудование"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                       |
          | Цена:             | 1000                        |
          | Валюта            | $                           |
          | Текст             | Продаю швейную машину       |
          | Тип предложения   | продам                      |
          | Заголовок         | Продаю швейную машину       |
          | Вид               | промышленные швейные машины |
          | Состояние         | новый                       |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
       * объявление с названием "Продаю швейную машину" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Вид" равно "промышленные швейные машины"
        * на вкладке "Все" "Состояние" равно "новый"
