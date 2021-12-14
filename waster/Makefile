CC=gcc

CFLAGS:=-Wall

all: libwaster.a

libwaster.o: waster.c waster.h
	$(CC) $(CFLAGS) -c waster.c

libwaster.a: libwaster.o
	ar rcs libwaster.a waster.o