REPO=takeshinoda/ruby-build
TAG=20180224
RUBY_SRC=$(HOME)/src/ruby

build:
	docker build -t $(REPO):$(shell date +%Y%m%d) .

run:
	docker run -v $(RUBY_SRC):/ruby -it $(REPO):$(shell date +%Y%m%d)

