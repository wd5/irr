# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Аудио, Видео -> Проигрыватели и музыкальные центры (тип носителя)- заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Аудио, Видео -> Проигрыватели и музыкальные центры
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Аудио, Видео -> Проигрыватели и музыкальные центры"
        * на странице категории присутствует секция "Музыкальные проигрыватели - тип носителя"
        * я заполняю ссылки в секции "Музыкальные проигрыватели - тип носителя" с параметрами:
        | название | значение                                             |
        | feature  | Электроника и техника -> Аудио, Видео -> Проигрыватели и музыкальные центры (тип носителя) |
        | category | Электроника и техника -> Аудио, Видео -> Проигрыватели и музыкальные центры |
        | section  | Музыкальные проигрыватели - тип носителя         |
        | field    | Тип носителя                                      |
