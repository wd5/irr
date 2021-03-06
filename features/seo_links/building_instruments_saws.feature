# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Инструменты -> Пилы, электро, бензопилы - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Инструменты -> Пилы, электро, бензопилы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по бензиновым
    Когда я выбираю ссылку "Бензиновые пилы" в секции "Быстрый поиск"
       То ссылка содержит "petrol"
        * в поле "Тип двигателя" выбраны следующие значения:
          | value      |
          | бензиновый |

  Сценарий: Фильтр по электрическим
    Когда я выбираю ссылку "Электрические пилы" в секции "Быстрый поиск"
       То ссылка содержит "electric"
        * в поле "Тип двигателя" выбраны следующие значения:
          | value         |
          | электрический |
