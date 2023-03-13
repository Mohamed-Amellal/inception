all:
	docker-compose build
build:
	docker-compose build
start:
	@docker-compose --env-file -f up
stop:
	@docker-compose down
removeimages:
	@docker system prune -af 

clean: removeimages

re : clean all build
