# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Кошки

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Животные и растения -> Животные -> Кошки"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Заголовок          | Тест подачи объявления 1  |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Порода             | Русская голубая кошка     |
          | Возраст            | 2 ~ мес.                  |
          | Текст              | Продаю котят              |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Заголовок          | Тест подачи объявления 2 (кошка) |
          | Цена:              | 100                       |
          | Валюта             | $                         |
          | Порода             | Русская голубая кошка     |
          | Возраст            | 2 ~ года/лет              |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
