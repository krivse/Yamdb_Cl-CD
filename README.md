REST API для сервиса YaMDb — базы отзывов о фильмах, книгах и музыке. (Совместный проект 3 студентов Яндекс.Практикум)

Разработчики проекта

Иван Красников (разработка ресурсов Auth и Users)
Андрей Круглов (тимлид, разработка ресурсов Categories, Genres и Titles)
Виталий Климов (разработка ресурсов Review и Comments)

Стек: Python 3.7, Django, DRF, Simple-JWT, PostgreSQL, Docker, nginx, gunicorn.

Описание

API для сервиса YaMDb. Позволяет работать со следующими сущностями:

Отзывы (Получить список всех отзывов, создать новый отзыв, получить отзыв по id, частично обновить отзыв по id, удалить отзыв по id)

Коментарии к отзывам (Получить список всех комментариев к отзыву по id, создать новый комментарий для отзыва, получить комментарий для отзыва по id, частично обновить комментарий к отзыву по id, удалить комментарий к отзыву по id)

JWT-токен (Отправление confirmation_code на переданный email, получение JWT-токена в обмен на email и confirmation_code)

Пользователи (Получить список всех пользователей, создание пользователя, получить пользователя по username, изменить данные пользователя по username, удалить пользователя по username, получить данные своей учетной записи, изменить данные своей учетной записи)

Категории (типы) произведений (Получить список всех категорий, создать категорию, удалить категорию)

Категории жанров (Получить список всех жанров, создать жанр, удалить жанр)

Произведения, к которым пишут отзывы (Получить список всех объектов, создать произведение для отзывов, информация об объекте, обновить информацию об объекте, удалить произведение)

Запуск (docker)

Запустить docker-compose:

docker-compose up

При первом запуске для функционирования проекта обязательно выполнить миграции:

docker-compose exec web python manage.py migrate

Чтобы ззагрузить список ингредиентов в БД:

docker-compose exec web python manage.py loaddata fixtures.json

Проект можно посмотреть по адресу: http://84.201.141.104:80

![status workflow](https://github.com/krivse/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)
