# makefile for adder

# compiler options
COPT = -Wno-unused-but-set-variable -Wno-unused-variable

# overall targets
all: adder testinput checkoutput

# building
adder: adder.o
	gcc adder.o -lpthread -lm -o adder

testinput: testinput.o
	gcc testinput.o -lpthread -lm -o testinput

checkoutput: checkoutput.o
	gcc checkoutput.o -lpthread -lm -o checkoutput

#building the objects
adder.o: adder.c
	gcc -c $(COPT) -pthread -o adder.o adder.c

testinput.o: testinput.c
	gcc -c $(COPT) -pthread -o testinput.o testinput.c

checkoutput.o: checkoutput.c
	gcc -c $(COPT) -pthread -o checkoutput.o checkoutput.c

clean:
	rm -rf *.o rm -rf adder rm -rf testinput rm -rf checkoutput
