APP_NAME="modou"
# Build the container
build: ## Build the container
	docker-compose down && docker-compose --env-file ${CURDIR}/magicbean.env up --build
## docker build --rm -t $(APP_NAME) .

run: ## run container
	docker-compose up -d

stop: ## stop container
	docker-compose stop

down: ## stop container
	docker-compose down

clean:
	docker image prune
