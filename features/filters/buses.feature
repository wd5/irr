# language: ru
# encoding: utf-8

Функционал: Фильтр в Автобусах

  Контекст:
    * открыта главная страница
    * открыт список объявлений для категории "Автобусы"

  Сценарий: Регион - Москва
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле   | значение |
      | Регион | Москва   |
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице "Город" равно "Москва"

  Сценарий: Регион - Москва или Санкт-Петербург
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле   | значение        |
      | Регион | Москва          |
      | Регион | Санкт-Петербург |
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице "Город" равно одному из "Москва; Санкт-Петербург"

  Сценарий: Марка - Hyundai
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле  | значение |
      | Марка | Hyundai  |
       То на странице результатов показано >= 1 объявлений
        * в деталях каждого объявления на странице "Марка" равно "Hyundai"

  Сценарий: Модель - Hyundai Universe
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле   | значение |
      | Марка  | Hyundai  |
      | Модель | Universe |
       То на странице результатов показано >= 1 объявлений
        * в деталях каждого объявления на странице:
          | поле   | значение |
          | Марка  | Hyundai  |
          | Модель | Universe |

  Сценарий: Тип автобуса - городской
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле         | значение  |
      | Тип автобуса | городской |
       То на странице результатов показано >= 1 объявлений
        * в деталях каждого объявления на странице "Тип автобуса" равно "городской"

  Сценарий: Тип предложения - продам
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле            | значение |
      | Тип предложения | продам   |
       То на странице результатов показано >= 1 объявлений
        * в деталях каждого объявления на странице "Тип предложения" равно "продам"

  Сценарий: Цена
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле | от | до     |
      | Цена | 10 | 100000 |
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице "Цена" в границах "10 - 1000000"

  Сценарий: Год выпуска
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле        | от   | до   |
      | Год выпуска | 1990 | 2012 |
        * я переключаюсь на вид "Таблица"
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице "Год выпуска" в границах "1990 - 2012"

  Сценарий: Пробег
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле   | от   | до      |
      | Пробег | 1000 | 1000000 |
        * я переключаюсь на вид "Таблица"
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице "Пробег" в границах "1000 - 1000000"

  Сценарий: Только с фото
    Когда на странице фильтров я делаю поиск по параметрам:
      | поле          | значение |
      | Только с фото | x        |
       То на странице результатов показано >= 1 объявлений
        * у каждого объявления на странице присутствует фотография