# language:ru
# encoding: utf-8
Функционал: Список ИП - правильность счетчиков

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Проверка страницы списка интернет-партнеров
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То я запоминаю количество активных объявлений ИП

   Когда я перехожу на страницу списка интернет-партнеров
      То в списке присутствуют интернет-партнеры
       * в списке ИП для пользователя с ролью "Доверенный интернет-партнер" указано правильное количество объявлений
