# language:ru
# encoding: utf-8
Функционал: Подача объявления с фото - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики


  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                         |
          | Марка                    | DAF                           |
          | Модель                   | FA45                          |
          | Заголовок:               | Тест подачи объявления с фото |
          | Цена:                    | 50000                         |
          | Валюта                   | $                             |
          | Пробег:                  | 50000                         |
          | Мощность двигателя, л.с.:| 500                           |
          | Новый или подержанный    | новый                         |
          | Год выпуска              | 2005                          |
          | Тип топлива              | дизель                        |
          | Грузоподъемность:        | 50                            |
          | Текст                    | Тест подачи объявления с фото |
     * я загружаю фото на шаге 2
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Коммерческий транспорт | ВСЕ РЕГИОНЫ"
       То объявление с названием "Тест подачи объявления с фото" присутствует в списке
        * у объявления указана цена "50000" в долларах
    Когда я открываю детали этого объявления
       То у объявления отображается загруженная фотография

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | DAF     |
          | Модель    | FA45    |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест подачи объявления с фото"
