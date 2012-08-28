# language:ru
# encoding: utf-8
Функционал: Смена статуса объявления на премиум - Недвижимость -> Аренда (Область)

  Контекст:
    Когда открыта страница для региона "Россия"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. аренда" с параметрами:
          | parameter          | value                |
          | Регион             | Московская обл       |
          | Населённый пункт   | Пушкино              |
          | Улица              | Строительная         |
          | Шоссе:             | Ярославское          |
          | Удалённость        | 5                    |
          | Комнат в квартире  | 4                    |
          | Общая площадь      | 400                  |
          | Этаж               | 4                    |
          | Цена               | 400                  |
          | Валюта             | $                    |
          | Текст              | Тест изменения статуса на премиум |
     * я перехожу на шаг 3
    То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
        * в ЛК ИП я запоминаю значение поля "Премиум"
        * в ЛК ИП объявление с названием "4-комн.  квартира,   Строительная ул,  4,  площадь:  общая 400 кв. м." присутствует в списке
        * у объявления указан регион "Московская"
        * у объявления указан город "Пушкино"
        * у объявления указана цена "400" в долларах
        * я делаю данное объявление премиумом
      То в ЛК ИП значение поля "Премиум" уменьшилось на единицу

@after_index
  Сценарий: Проверка индексации
   Когда открыта страница для региона "Пушкино"
       * на главной странице я перехожу в категорию "Недвижимость -> Квартиры. аренда"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "4 комн, 400 м2, этаж 4"
