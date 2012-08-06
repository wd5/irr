# language:ru
# encoding: utf-8
Функционал: Товары для детей -> Спортивные товары - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Товары для детей -> Спортивные товары
      Когда на главной странице я перехожу в категорию "Товары для детей -> Спортивные товары"
        * на странице категории присутствует секция "Спортивные детские товары"
        * я заполняю ссылки в секции "Спортивные детские товары" с параметрами:
        | название | значение                              |
        | feature  | Товары для детей -> Спортивные товары |
        | category | Товары для детей -> Спортивные товары |
        | section  | Спортивные детские товары             |
        | field    | Тип                                   |
