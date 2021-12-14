CC = gcc
INCLUDES = -I./waster/
PROG_NAME = a.out
CFLAGS = -Wall -pthread
LDFLAGS = waster/libwaster.a
SUBDIRS = waster

all: subdirs
	$(CC) $(CFLAGS) main.c $(LDFLAGS) $(INCLUDES) -o $(PROG_NAME)

subdirs:
	@for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir; \
    done

clean:
	$(RM) $(PROG_NAME)
	@for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir clean; \
	done
