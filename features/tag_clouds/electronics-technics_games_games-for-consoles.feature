# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Игры, игровые приставки -> Игры для приставок - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Игры, игровые приставки -> Игры для приставок
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Игры, игровые приставки -> Игры для приставок"
        * на странице категории присутствует секция "Игры для приставок"
        * я заполняю ссылки в секции "Игры для приставок" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Игры, игровые приставки -> Игры для приставок |
        | category | Электроника и техника -> Игры, игровые приставки -> Игры для приставок |
        | section  | Игры для приставок                                       |
        | field    | Марка                |
