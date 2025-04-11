.PHONY: up down restart logs nginx-logs

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up -d

logs:
	docker-compose logs -f

nginx-logs:
	docker logs -f vws_pdlamp_nginx
