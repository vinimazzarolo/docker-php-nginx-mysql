.PHONY: up clean

up:
	composer install -noa
	cd .docker; docker-compose up -d --build

clean:
	cd .docker;
	docker-compose stop
	docker-compose rm -f
	sudo rm -rf _data/ vendor/