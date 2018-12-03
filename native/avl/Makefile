CC=riscv64-unknown-linux-gnu-gcc
CFLGAS=-std=c99 -Wall -O2

all: avl.bin

avl.bin: test.c avl_tree.c
	$(CC) $^ -o $@ $(CFLGAS) 

clean:
	rm -rf *.bin 
