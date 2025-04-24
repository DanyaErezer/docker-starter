# Установка

git submodule add https://github.com/DanyaErezer/docker-starter.git docker-starter
git submodule update --init --recursive

## Комит

git add .gitmodules docker-starter
git commit -m "Feature: Подключил модуль докер"
git push


# Удаление 

git submodule deinit -f docker
git rm -f docker
rm -rf .git/modules/docker

# Добавь в .env

# Игнорировать папку docker-starter (сабмодуль)
docker-starter/*
!docker-starter/.gitmodules

# Игнорировать контейнерные данные, логи, временные файлы внутри docker-starter
/docker-starter/db_data/
/docker-starter/logs/
/docker-starter/.docker/

# Игнорировать Laravel
.env
/storage/*.key
/vendor/
storage/*
/node_modules/

# Логи
/storage/logs/*
*.log

# Дамп БД
*.sql
*.sql.gz

# Прочее
.DS_Store
*.swp
