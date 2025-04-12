.PHONY: build up down restart logs nginx-logs

build:
	docker-compose build --no-cache

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

.PHONY: release

release:
	@if [ -z "$(VERSION)" ]; then \
		echo "❌ Укажи версию: make release VERSION=0.9.1"; \
		exit 1; \
	fi && \
	git tag -a v$(VERSION) -m "Release version $(VERSION)" && \
	git push origin v$(VERSION) && \
	echo "✅ Версия v$(VERSION) создана и отправлена на GitHub"
