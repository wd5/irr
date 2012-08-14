# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Двери, окна, балконы, лестницы -> Двери - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Двери, окна, балконы, лестницы -> Двери"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по входным
    Когда я выбираю ссылку "Входные двери" в секции "Быстрый поиск"
       То ссылка содержит "entrance"
        * в поле "Тип двери" выбраны следующие значения:
          | value   |
          | входные |

  Сценарий: Фильтр по межкомнатным
    Когда я выбираю ссылку "Межкомнатные двери" в секции "Быстрый поиск"
       То ссылка содержит "interior"
        * в поле "Тип двери" выбраны следующие значения:
          | value        |
          | межкомнатные |