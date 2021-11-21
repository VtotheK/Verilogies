CC = iverilog
FLAGS = -Wall 

all:
	$(CC) $(CFLAGS) -o alu alu.v
	$(CC)  $(FLAGS) -o testbench test.v

alu:
	$(CC) $(FLAGS) -o alu alu.v

test:
	$(CC)  $(FLAGS) -o testbench test.v

.PHONY: clean
clean:
	rm -f prog alu testbench 
