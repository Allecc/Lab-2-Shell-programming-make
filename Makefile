CC = gcc
CFLAGS = -Wall -g
TARGET = lab2
OBJ = main.o isEven.o isOdd.o

# setting the target 
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# all the rules 
main.o: main.c isEven.h
	$(CC) $(CFLAGS) -c main.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

isOdd.o: isOdd.c isEven.h
	$(CC) $(CFLAGS) -c isOdd.c

# for makeclean part of program
clean:
	rm -f $(OBJ) $(TARGET)