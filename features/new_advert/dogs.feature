# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Собаки - подача объявления

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Подача объявления в корректную категорию
   Когда я выхожу из текущего пользователя
       * я перехожу к подаче объявления
       * я ввожу логин и пароль роли "Интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Отдаю щенков                                 |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
     * я перехожу на шаг 3
     * открыт список объявлений пользователя

  То объявление с названием "Отдаю щенков" присутствует в списке
   * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
   * у объявления указан город "Усть-Алтан"
   * у объявления указана цена "100" в долларах
   * у объявления указана цена "74" в евро
   * у объявления указана цена "2903" в рублях

  Когда я открываю детали этого объявления 
     То на вкладке "Все" "Тип предложения" равно "даром"
      * на вкладке "Все" "Порода" равно "Английский кокер-спаниель"
      * на вкладке "Все" "Пол" равно "мальчик"
      * на вкладке "Все" "Возраст" равно "5"
      * на вкладке "Все" "Лет/мес." равно "мес."

  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Интернет-партнер"
       * я перехожу в список моих объявлений
       * открыт список объявлений пользователя
       * объявление с названием "Отдаю щенков" присутствует в списке
       * я редактирую данное объявление
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                      |
      | Тип предложения    | продам                     |
      | Заголовок          | Продам красивых щенков     |
      | Порода             | Американский бульдог       |
      | Пол                | девочка                    |
      | Возраст            | 2 ~ года/лет               |
      | Цена:              | 200                        |
      | Валюта             | €                          |
      | Текст              | Продам щенков бульдога     |
     * я сохраняю редактируемое объявление
     * открыт список объявлений пользователя

  То объявление с названием "Продам красивых щенков" присутствует в списке
   * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
   * у объявления указан город "Усть-Алтан"
   * у объявления указана цена "269" в долларах
   * у объявления указана цена "200" в евро
   * у объявления указана цена "7821" в рублях

  Когда я открываю детали этого объявления
      * загружены параметры объявления для категории "Животные и растения -> Животные -> Собаки"
     То на вкладке "Все" "Тип предложения" равно "продам"
      * на вкладке "Все" "Порода" равно "Американский бульдог"
      * на вкладке "Все" "Пол" равно "девочка"
      * на вкладке "Все" "Возраст" равно "2"
      * на вкладке "Все" "Лет/мес." равно "года/лет"
