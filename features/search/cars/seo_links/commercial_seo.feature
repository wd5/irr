# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт"

  Сценарий: Фильтр по микроавтобусам
    Когда я выбираю ссылку "Микроавтобусы" в секции "Быстрый поиск"
       То ссылка содержит "micro"
        * значение в поле "Число мест" равно "меньше 12"

  Сценарий: Фильтр по строительной технике
    Когда я выбираю ссылку "Строительная техника" в секции "Быстрый поиск"
       То ссылка содержит "building"
        * в поле "Тип техники" выбраны следующие значения:
        | value           |
        | бетоносмеситель |
        | автокран        |

  Сценарий: Фильтр по дорожной технике
    Когда я выбираю ссылку "Дорожная техника" в секции "Быстрый поиск"
       То ссылка содержит "road"
      # Ничего не выбрано в поле "Техника" - баг?

  Сценарий: Фильтр по погрузчикам
    Когда я выбираю ссылку "Погрузчики" в секции "Быстрый поиск"
       То ссылка содержит "loaders"

# TODO: проверка, что других seo-линков нет