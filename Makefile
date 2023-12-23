ifneq (,$(wildcard ./.env))
    include .env
    export
endif

HOME_SUBDOMAIN ?= media
DOMAIN ?= localhost
TRAEFIK_PORT ?= 80
HOMEPAGE_PORT ?= 6900

default:
	docker-compose up -d --remove-orphans
	@echo "\n\x1b[1;32mMedia management server started!\x1b[0m\nNavigate to the homepage to start:\n\n\t\x1b[0;4;34mhttp://${HOME_SUBDOMAIN}.${DOMAIN}:${TRAEFIK_PORT}\n\thttp://localhost:${HOMEPAGE_PORT}\x1b[0m\n"

down:
	docker-compose down