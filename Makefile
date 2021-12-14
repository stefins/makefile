CC = gcc
INCLUDES = -I./waster
PROG_NAME = a.out
CFLAGS = -Wall $(INCLUDES) -lwaster
LDFLAGS = -L./waster/
SUBDIRS = waster

all: subdirs
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG_NAME) main.c

subdirs:
	@for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir; \
    done

clean:
	$(RM) $(PROG_NAME)
	@for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir clean; \
	done
