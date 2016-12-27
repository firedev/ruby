all: build

build:
	docker build -t firedev/ruby:2.3 .
