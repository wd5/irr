# language:ru
# encoding: utf-8
Функционал: Услуги и деятельность -> Строительные и ремонтные услуги -> Отделочные и ремонтные работы - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Услуги и деятельность -> Строительные и ремонтные услуги -> Отделочные и ремонтные работы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по мелкому ремонту
    Когда я выбираю ссылку "Мелкий ремонт, "муж на час"" в секции "Быстрый поиск"
       То ссылка содержит "muzh-na-chas"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                     |
          | мелкий ремонт, муж на час |

  Сценарий: Фильтр по отделке потолков
    Когда я выбираю ссылку "Отделка потолков" в секции "Быстрый поиск"
       То ссылка содержит "otdelka-potolkov"
        * в поле "Вид услуги" выбраны следующие значения:
          | value            |
          | отделка потолков |

  Сценарий: Фильтр по отделке стен
    Когда я выбираю ссылку "Отделка стен" в секции "Быстрый поиск"
       То ссылка содержит "otdelka-sten"
        * в поле "Вид услуги" выбраны следующие значения:
          | value        |
          | отделка стен |

  Сценарий: Фильтр по отделке полов
    Когда я выбираю ссылку "Отделка полов" в секции "Быстрый поиск"
       То ссылка содержит "otdelka-polov"
        * в поле "Вид услуги" выбраны следующие значения:
          | value         |
          | отделка полов |

  Сценарий: Фильтр по сантехническим работам
    Когда я выбираю ссылку "Сантехнические работы, канализация" в секции "Быстрый поиск"
       То ссылка содержит "santehnicheskie-raboty"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                              |
          | сантехнические работы, канализация |

  Сценарий: Фильтр по установке окон
    Когда я выбираю ссылку "Установка окон, остекление балконов" в секции "Быстрый поиск"
       То ссылка содержит "ustanovka-okon"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                       |
          | установка окон, остекление балконов, лоджий |

  Сценарий: Фильтр по установке дверей
    Когда я выбираю ссылку "Установка межкомнатных и входных дверей" в секции "Быстрый поиск"
       То ссылка содержит "ustanovka-dverei"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                   |
          | установка межкомнатных и входных дверей |

  Сценарий: Фильтр по монтажу лестниц
    Когда я выбираю ссылку "Монтаж лестниц" в секции "Быстрый поиск"
       То ссылка содержит "montazh-lestnic"
        * в поле "Вид услуги" выбраны следующие значения:
          | value          |
          | монтаж лестниц |