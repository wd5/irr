# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Сантехника -> Душевые кабины - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Строительство и ремонт -> Сантехника -> Душевые кабины
      Когда на главной странице я перехожу в категорию "Строительство и ремонт -> Сантехника -> Душевые кабины"
        * на странице категории присутствует секция "Душевые кабины"
        * я заполняю ссылки в секции "Душевые кабины" с параметрами:
        | название | значение                                               |
        | feature  | Строительство и ремонт -> Сантехника -> Душевые кабины |
        | category | Строительство и ремонт -> Сантехника -> Душевые кабины |
        | section  | Душевые кабины                                         |
        | field    | Марка                                                  |
