# language:ru
# encoding: utf-8
Функционал: Деактивация объявления - Авто и Мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Деактивация объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                       |
          | Марка                    | DAF                         |
          | Модель                   | FA65                        |
          | Заголовок:               | Тест деактивации объявления |
          | Цена:                    | 80000                       |
          | Валюта                   | $                           |
          | Пробег:                  | 80000                       |
          | Мощность двигателя, л.с.:| 800                         |
          | Новый или подержанный    | новый                       |
          | Год выпуска              | 2008                        |
          | Тип топлива              | дизель                      |
          | Грузоподъемность:        | 80                          |
          | Текст                    | Тест деактивации объявления |
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Коммерческий транспорт | ВСЕ РЕГИОНЫ"
       То объявление с названием "Тест деактивации объявления" присутствует в списке

    Когда я деактивирую данное объявление
       То статус созданного объявления равен "неактивно"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value        |
          | Марка     | DAF          |
          | Модель    | FA65         |
          | Поданные  | вчера и сегодня      |
       * на странице поиска загружен список результатов
       * в списке объявлений отсутствует объявление "Тест деактивации объявления"
