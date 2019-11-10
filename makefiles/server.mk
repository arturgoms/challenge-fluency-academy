# Server Makefile

# Install will build a docker with all the requirements for the project be able to run
server.install:
	docker-compose run --publish=5300:5300/udp --rm server pip install -r requirements.txt --user --upgrade --no-warn-script-location 

# Start will start the container up
server.start:
	docker-compose up server

# Bash will run a bash process inside the container, for debug proporse
server.bash:
	docker-compose exec server bash

# Daemon will run the container as a daemon
server.daemon:
	docker-compose up -d server

# Stop will stop the server container and the database
server.stop:
	docker-compose stop server

# Logs will display the server.log file
server.logs:
	tail -f dns-server.log

# Upgrade will upgrade the modules on the container, used when another module is added to the project
server.upgrade:
	docker-compose run --rm server bash -c "python vendor/bin/pip-upgrade requirements.txt  --skip-virtualenv-check"
