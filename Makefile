export LOCAL_IPS ?= 192.168.1/24
export HOST := $(shell hostname)

up:
	docker-compose --project-name vpn up -d --remove-orphans ${XARGS}


down:
	docker-compose --project-name vpn down --remove-orphans ${XARGS}
