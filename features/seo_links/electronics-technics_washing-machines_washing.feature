# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Стиральные машины -> Стиральные машины - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Электроника и техника -> Стиральные машины -> Стиральные машины"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по машинам с фронтальной загрузкам
    Когда я выбираю ссылку "Фронтальная загрузка" в секции "Быстрый поиск"
       То ссылка содержит "frontal%27naya"
        * в поле "Тип загрузки" выбраны следующие значения:
          | value       |
          | фронтальная |

  Сценарий: Фильтр по машинам с вертикальной загрузкой
    Когда я выбираю ссылку "Вертикальная загрузка" в секции "Быстрый поиск"
       То ссылка содержит "vertikal%27naya"
        * в поле "Тип загрузки" выбраны следующие значения:
          | value        |
          | вертикальная |

  Сценарий: Фильтр по встраиваемым машинам
    Когда я выбираю ссылку "Встраиваемые стиральные машины" в секции "Быстрый поиск"
       То ссылка содержит "builtin"
        * поле "Встраиваемая техника" отмечено