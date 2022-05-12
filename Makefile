APP_NAME="modou"
# Build the container
build: ## Build the container
	docker-compose down && docker-compose up --build 
## docker build --rm -t $(APP_NAME) .

run: ## run container
	docker run -d -p 22 modou
