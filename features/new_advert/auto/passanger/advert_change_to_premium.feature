# language:ru
# encoding: utf-8
Функционал: Смена статуса объявления на премиум - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value                |
          | Марка            | Audi                 |
          | Модель           | A4                   |
          | Цена:            | 40000                |
          | Валюта           | $                    |
          | Год выпуска      | 2004                 |
          | Тип кузова       | кабриолет            |
          | Тип трансмиссии  | автоматическая       |
          | Текст            | Тест смена статуса на премиум|
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
        * объявление с названием "Audi A4,  кабриолет,  2004 г. в.,  автоматическая" присутствует в списке
        * в ЛК ИП я запоминаю значение поля "Премиум"
        * я делаю данное объявление премиумом
       То в ЛК ИП значение поля "Премиум" уменьшилось на единицу

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | Audi    |
          | Модель    | A4      |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "Audi A4,  кабриолет,  2004 г. в.,  автоматическая"
