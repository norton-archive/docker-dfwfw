.PHONY: all build start stop clean realclean

all: start

dfwfw/.git:
	git clone https://github.com/norton/dfwfw.git

build: dfwfw/.git
	docker-compose build

start: build
	docker-machine scp dfwfw.conf $(DOCKER_MACHINE_NAME):/home/docker/dfwfw.conf
	docker-compose up -d

stop:
	docker-compose stop

clean: stop
	docker-compose down

realclean: clean
	@docker rm -v $(shell docker ps -a -q -f status=exited) 2>/dev/null || true
	@docker rmi $(shell docker images -q) 2>/dev/null || true
	@docker rm $(shell docker ps -a -q) 2>/dev/null || true
