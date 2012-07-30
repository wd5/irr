# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Диски - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Автозапчасти и принадлежности -> Диски
      Когда на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
        * на странице категории присутствует секция "Производители дисков"
        * я заполняю ссылки в секции "Производители дисков" с параметрами:
        | название | значение                                                              |
        | feature  | Авто и мото -> Автозапчасти и принадлежности -> Диски (производители) |
        | category | Авто и мото -> Автозапчасти и принадлежности -> Диски                 |
        | section  | Производители дисков                                                  |
        | field    | Произодитель                                                          |
