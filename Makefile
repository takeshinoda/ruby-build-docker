REPO=takeshinoda/ruby-build
TAG=$(shell date +%Y%m%d)

build:
	docker build -t $(REPO):$(TAG) .

