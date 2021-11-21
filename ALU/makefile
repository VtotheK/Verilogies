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
clean-test:
	rm -f prog testbench 

clean-alu:
	rm -f prog alu 
clean-all:
	rm -f prog alu testbench 
