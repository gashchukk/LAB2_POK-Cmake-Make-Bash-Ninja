SUBDIRS = examples library
CC=gcc
all: $(SUBDIRS)

$(SUBDIRS):
    $(MAKE) -C $@

clean:
    for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir clean; \
    done

.PHONY: all clean
