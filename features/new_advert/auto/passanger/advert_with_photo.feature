# language:ru
# encoding: utf-8
Функционал: Подача объявления с фото - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом


  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Марка            | Audi           |
          | Модель           | A5             |
          | Цена:            | 50000          |
          | Валюта           | $              |
          | Год выпуска      | 2005           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест подачи объявления с фото  |
     * я загружаю фото на шаге 2
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То объявление с названием "Audi A5,  кабриолет,  2005 г. в.,  автоматическая" присутствует в списке
        * у объявления указана цена "50000" в долларах
    Когда я открываю детали этого объявления
       То у объявления отображается загруженная фотография

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | Audi    |
          | Модель    | A5      |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Audi A5,  кабриолет,  2005 г. в.,  автоматическая"
