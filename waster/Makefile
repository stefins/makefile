CC=gcc
CFLAGS:=-Wall

all: libwaster.a

libwaster.o: waster.c waster.h
	$(CC) $(CFLAGS) -c $^

libwaster.a: libwaster.o
	ar rcs libwaster.a waster.o

clean:
	$(RM) $(wildcard *.o *.a *.gch)