# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Легковые автомобили -> Новые автомобили

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Новые автомобили"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Audi                      |
          | Модель             | A4                        |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Год выпуска        | 2010                      |
          | Тип кузова         | седан                     |
          | Тип двигателя      | дизель                    |
          | Привод             | передний                  |
          | Тип трансмиссии    | механическая              |
          | Текст              | Продаю ауди               |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Новые автомобили"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Audi                      |
          | Модель             | A4                        |
          | Цена:              | 200                       |
          | Валюта             | $                         |
          | Год выпуска        | 2010                      |
          | Тип кузова         | седан                     |
          | Тип двигателя      | дизель                    |
          | Привод             | передний                  |
          | Тип трансмиссии    | механическая              |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
