# Установка

git submodule add https://github.com/your-username/docker-starter.git docker
git submodule update --init --recursive

## Комит

git add .gitmodules docker
git commit -m "Feature: Подключил модуль докер"
git push


# Удаление 

git submodule deinit -f docker
git rm -f docker
rm -rf .git/modules/docker