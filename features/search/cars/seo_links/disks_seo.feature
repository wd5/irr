# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Диски- seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по кованым дискам
    Когда я выбираю ссылку "Кованые диски" в секции "Быстрый поиск"
       То ссылка содержит "kovanye"
        * в поле "Тип дисков" выбраны следующие значения:
        | value   |
        | кованые |

  Сценарий: Фильтр по литым дискам
    Когда я выбираю ссылку "Литые диски" в секции "Быстрый поиск"
       То ссылка содержит "litye"
        * в поле "Тип дисков" выбраны следующие значения:
        | value |
        | литые |

@bugs @bug35582
  Сценарий: Фильтр по сборным дискам
    Когда я выбираю ссылку "Cборные диски" в секции "Быстрый поиск"
       То ссылка содержит "sbornye"
        * в поле "Тип дисков" выбраны следующие значения:
        | value   |
        | сборные |

  Сценарий: Фильтр по штампованным дискам
    Когда я выбираю ссылку "Штампованные диски" в секции "Быстрый поиск"
       То ссылка содержит "shtampovannye"
        * в поле "Тип дисков" выбраны следующие значения:
        | value        |
        | штампованные |