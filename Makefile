CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 test1 bestFitTest

all: $(OBJ)

bestFitTest: myAllocator.o bestFitTest.o
	$(CC) $(CFLAGS) -o $@ $^

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test1: myAllocator.o malloc.o test1.o
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o $(OBJ) 

