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