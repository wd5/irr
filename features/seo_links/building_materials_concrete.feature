# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Материалы -> ЖБИ, бетон, кирпич, сухие смеси - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Материалы -> ЖБИ, бетон, кирпич, сухие смеси"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по бетону
    Когда я выбираю ссылку "Бетон" в секции "Быстрый поиск"
       То ссылка содержит "concrete"
        * в поле "Тип материала" выбраны следующие значения:
          | value |
          | бетон |

  Сценарий: Фильтр по ЖБИ
    Когда я выбираю ссылку "ЖБИ" в секции "Быстрый поиск"
       То ссылка содержит "concrete-goods"
        * в поле "Тип материала" выбраны следующие значения:
          | value |
          | ЖБИ   |

  Сценарий: Фильтр по кирпичам
    Когда я выбираю ссылку "Кирпич" в секции "Быстрый поиск"
       То ссылка содержит "bricks"
        * в поле "Тип материала" выбраны следующие значения:
          | value  |
          | кирпич |

  Сценарий: Фильтр по сухим смесям
    Когда я выбираю ссылку "Сухие смеси" в секции "Быстрый поиск"
       То ссылка содержит "mixture"
        * в поле "Тип материала" выбраны следующие значения:
          | value       |
          | сухие смеси |

  Сценарий: Фильтр по щебню
    Когда я выбираю ссылку "Щебень" в секции "Быстрый поиск"
       То ссылка содержит "break-stone"
        * поле "Ключевые слова" равно "щебень"
