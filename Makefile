NODE_MODULES=./node_modules/.bin
GULP=${NODE_MODULES}/gulp

.PHONY: \
	all \
	build \
	help \
	dev

all: dev

dev:
	@echo "starting development environment"
	@${GULP}

build: clean
	@echo "starting production build"

	@NODE_ENV='production'; \
	${GULP} server

	@echo "build finished"

clean:
	@echo "cleaning up dist dir"

	@rm -rf ./dist

	@echo "cleanup finished"

install:
	@npm install

help:
	@echo "\n\
	make tasks: \n\
	make         - starts development mode \n\
	make install - installs npm dependencies \n\
	make build   - builds production files \n\
	make clean   - delete ./dist directory \n\
	"
