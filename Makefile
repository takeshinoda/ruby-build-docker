REPO=takeshinoda/ruby-build
TAG=20180226
RUBY_SRC=$(HOME)/src/ruby
MJIT_TMP_DIR=$(HOME)/src/tmp/mjit

build:
	docker build -t $(REPO):$(shell date +%Y%m%d) .

run: mjit_tmp
	docker run -v $(RUBY_SRC):/ruby -v $(MJIT_TMP_DIR):/tmp/mjit -it $(REPO):$(TAG)

mjit_tmp: $(MJIT_TMP_DIR)

$(MJIT_TMP_DIR):
	mkdir -p $(MJIT_TMP_DIR)

