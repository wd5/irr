# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Электронные книги

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Электроника и техника -> Электронные книги"
        * на странице категории присутствует секция "Электронные книги"

  Структура сценария: Облако тегов марок
    Когда я перехожу по ссылке "<ссылка>"
       То открыта не страница 404
        * в поле "Марка" выбрано значение "<текст>"
        * на странице поиска загружен список результатов
        * на странице показано >= 1 объявлений

  Примеры: 
  | текст | ссылка |
