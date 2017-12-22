
build:
	docker build . -t sdcplatform/ras-rm-docker-postgres:latest

run:
	docker-compose up -d

all: build run
