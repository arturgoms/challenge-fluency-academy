.DEFAULT_GOAL := daemon

# This is the Makefile for the bcredi-test

# Install will build a docker with all the requirements for the project be able to run
install:
	make server.install
# Daemon will run the project inside the docker as a daemon, so your console will be free
daemon:
	make server.daemon

# Stop will stop them all
stop:
	docker-compose stop

# Start will start the server on console
start-server: server.start


include makefiles/server.mk
