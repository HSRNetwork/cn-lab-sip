default: start

start:
	sudo docker-compose up -d

stop:
	sudo docker-compose down

restart-all:
	sudo docker-compose restart

restart-kamailio:
	sudo docker-compose restart kamailio
