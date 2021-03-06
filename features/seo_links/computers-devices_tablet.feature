# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Планшеты - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Компьютерная техника -> Планшеты"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по планшетам Android
    Когда я выбираю ссылку "Планшеты Android" в секции "Быстрый поиск"
       То ссылка содержит "android"
        * в поле "Операционная система" выбраны следующие значения:
          | value   |
          | Android |

  Сценарий: Фильтр по планшетам iPad
    Когда я выбираю ссылку "Планшеты iPad" в секции "Быстрый поиск"
       То ссылка содержит "ipad"
        * в поле "Операционная система" выбраны следующие значения:
          | value |
          | iOS   |

  Сценарий: Фильтр по планшетам Windows 7
    Когда я выбираю ссылку "Планшеты Windows 7" в секции "Быстрый поиск"
       То ссылка содержит "windows7"
        * в поле "Операционная система" выбраны следующие значения:
          | value     |
          | Windows 7 |
