docker-start:
	docker-compose up --build

docker-restart:
	docker-compose restart aws-accounts

docker-stop:
	docker-compose stop aws-accounts

docker-connect:
	docker-compose exec aws-accounts /bin/sh