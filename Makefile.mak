CC = gcc
CFLAGS = -Wall -g
TARGET = lab2
OBJ = main.o isEven.o isOdd.o

# The target that builds the final program
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Individual rules for object files
main.o: main.c isEven.h
	$(CC) $(CFLAGS) -c main.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

isOdd.o: isOdd.c isEven.h
	$(CC) $(CFLAGS) -c isOdd.c

# Rule for cleaning up (Requirement: make clean)
clean:
	rm -f $(OBJ) $(TARGET)