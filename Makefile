build:
	cd srcs/ && docker-compose --env-file /requirements/.env build
start:
	@cd srcs/ && docker-compose --env-file requirements/.env up -d
stop:
	@cd srcs/ &&  docker-compose down
removeimages:
	@cd srcs/ && docker system prune -af 

clean: removeimages

re : clean all build
