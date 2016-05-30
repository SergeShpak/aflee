CC = ../afl-gcc
EXEC = main

all: t_assert
	$(CC) -o $(EXEC) main.c -L. -lt_assert

t_assert: terminal_assert.o
	ar rcs libt_assert.a terminal_assert.o

terminal_assert.o: 
	$(CC) -c -g terminal_assert.c -o terminal_assert.o 

clean:
	rm terminal_assert.o libt_assert.a $(EXEC)
