# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Малый коммерческий транспорт

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Малый коммерческий транспорт"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter             | value        |
          | Марка                 | Fiat         |
          | Модель                | Ducato       |
          | Заголовок             | Продаю фиат  |
          | Цена                 | 15000        |
          | Валюта                | руб.         |
          | Год выпуска           | 2000         |
          | Пробег                | 20000        |
          | Объем двигателя       | 6            |
          | Новый или подержанный | новый        |
          | Тип кузова            | пикап        |
          | Тип трансмиссии       | механическая |
          | Текст                 | Продаю фиат  |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter             | value         |
          | Марка                 | Mercedes      |
          | Модель                | Sprinter      |
          | Заголовок             | Продаю газель |
          | Цена                 | 200           |
          | Валюта                | $             |
          | Год выпуска           | 2005          |
          | Пробег                | 20050         |
          | Объем двигателя       | 6             |
          | Новый или подержанный | б/у           |
          | Тип кузова            | пикап         |
          | Тип трансмиссии       | вариатор      |
          | Текст                 | Продаю        |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
