# language:ru
# encoding: utf-8
Функционал: Заполнение списка типов

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Автозапчасти и принадлежности -> Шины (диаметр)
      Когда на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Шины"
        * на странице категории присутствует секция "Диаметр"
        * я заполняю ссылки в секции "Диаметр" в сценарий "search/cars/tag_clouds/parts_tires_obod/parts_tires_obod.feature"
