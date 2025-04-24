up:
	docker compose up -d --build

down:
	docker compose down

rebuild: down up

migrate:
	docker compose exec app php artisan migrate

fresh:
	docker compose exec app php artisan migrate:fresh --seed

clear:
	docker compose exec app php artisan optimize:clear

bash:
	docker compose exec app bash

logs:
	docker compose logs -f
# ⚠️ УДАЛЯЕТ volume БД. Используй ТОЛЬКО на dev!
down-hard:
	@echo "⚠️  ВНИМАНИЕ! Эта команда УДАЛИТ все данные из БД!"
	@read -p "Точно хочешь продолжить? (yes/NO): " confirm && [ "$$confirm" = "yes" ] && docker compose down -v || echo "Отмена."