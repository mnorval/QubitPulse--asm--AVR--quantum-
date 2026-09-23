CC?=gcc
all:
	mkdir -p build
	$(CC) -std=c11 -O2 -Wall src/host_ref.c -o build/qubit_ref -lm
clean:
	rm -rf build
