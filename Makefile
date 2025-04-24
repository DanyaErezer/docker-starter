up:
	docker compose up -d --build

down:
	docker compose down -v

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
