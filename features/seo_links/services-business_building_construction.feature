# language:ru
# encoding: utf-8
Функционал: Услуги и деятельность -> Строительные и ремонтные услуги -> Строительно-монтажные работы - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Услуги и деятельность -> Строительные и ремонтные услуги -> Строительно-монтажные работы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по строительству домов и коттеджей
    Когда я выбираю ссылку "Строительство домов и коттеджей" в секции "Быстрый поиск"
       То ссылка содержит "stroitelstvo-domov"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                          |
          | строительство домов, коттеджей |

  Сценарий: Фильтр по сборке конструкций
    Когда я выбираю ссылку "Сборка конструкций: бань, домов, срубов" в секции "Быстрый поиск"
       То ссылка содержит "sborka-konstrukciy"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                   |
          | сборка конструкций: бань, домов, срубов |

  Сценарий: Фильтр по кровельным работам
    Когда я выбираю ссылку "Кровельные работы" в секции "Быстрый поиск"
       То ссылка содержит "krovelnye-raboty"
        * в поле "Вид услуги" выбраны следующие значения:
          | value             |
          | кровельные работы |

  Сценарий: Фильтр по земляным работам
    Когда я выбираю ссылку "Земляные работы: бурение колодцев, скважен" в секции "Быстрый поиск"
       То ссылка содержит "zemlyanye-raboty"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                      |
          | земляные работы, бурение колодцев, скважин |

  Сценарий: Фильтр по кладке печей
    Когда я выбираю ссылку "Кладка печей, каминов" в секции "Быстрый поиск"
       То ссылка содержит "kladka-pechei"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                 |
          | кладка печей, каминов |

  Сценарий: Фильтр по инженерным работам
    Когда я выбираю ссылку "Инженерные и электромонтажные работы" в секции "Быстрый поиск"
       То ссылка содержит "inzhenernye-raboty"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                |
          | инженерные и электромонтажные работы |

  Сценарий: Фильтр по сварочным работам
    Когда я выбираю ссылку "Монтаж металлоконструкций, сварочные работы" в секции "Быстрый поиск"
       То ссылка содержит "svarochnye-raboty"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                       |
          | монтаж металлоконструкций, сварочные работы |

  Сценарий: Фильтр по установке кондиционеров
    Когда я выбираю ссылку "Установка кондиционеров и вентиляционных систем" в секции "Быстрый поиск"
       То ссылка содержит "ustanovka-kondicionerov"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                                           |
          | установка кондиционеров и вентиляционных систем |

  Сценарий: Фильтр по монтажу отопительных систем
    Когда я выбираю ссылку "Монтаж отопительных систем" в секции "Быстрый поиск"
       То ссылка содержит "montazh-otopitelnyh-sistem"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                      |
          | монтаж отопительных систем |
