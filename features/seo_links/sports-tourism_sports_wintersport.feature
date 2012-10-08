# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Зимний инвентарь - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Зимний инвентарь"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по лыжам
    Когда я выбираю ссылку "Лыжи и лыжные ботинки" в секции "Быстрый поиск"
       То ссылка содержит "ski"
        * в поле "Тип снаряжения" выбрано значение "лыжи и лыжные ботинки"

  Сценарий: Фильтр по конькам
    Когда я выбираю ссылку "Коньки" в секции "Быстрый поиск"
       То ссылка содержит "skates"
        * в поле "Тип снаряжения" выбрано значение "коньки"

  Сценарий: Фильтр по санкам
    Когда я выбираю ссылку "Санки" в секции "Быстрый поиск"
       То ссылка содержит "sled"
        * в поле "Тип снаряжения" выбрано значение "ватрушки, надувные сани, санки"

  Сценарий: Фильтр по сноубордам
    Когда я выбираю ссылку "Сноуборды" в секции "Быстрый поиск"
       То ссылка содержит "snowboard"
        * в поле "Тип снаряжения" выбрано значение "сноуборды"

  Сценарий: Фильтр по хоккейному снаряжению
    Когда я выбираю ссылку "Хоккейное снаряжение" в секции "Быстрый поиск"
       То ссылка содержит "hockey"
        * в поле "Тип снаряжения" выбрано значение "сноуборды"