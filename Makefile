export LOCAL_IPS ?= 192.168.1/24

up:
	docker-compose --project-name vpn up -d --remove-orphans


down:
	docker-compose --project-name vpn down --remove-orphans
