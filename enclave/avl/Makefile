CC=riscv64-unknown-linux-gnu-gcc
LD=riscv64-unknown-linux-gnu-ld
AS = riscv64-unknown-linux-gnu-as

SDK_LIB_DIR=/home/centos/firesim/sw/firesim-software/sdk/lib
SDK_APP_LIB = $(SDK_LIB_DIR)/libkeystone-eapp.a
SDK_INCLUDE_DIR = $(SDK_LIB_DIR)/app/include
APP_LDS ?= ../app.lds

LDFLAGS = -static -L$(SDK_LIB_DIR) -lkeystone-eapp -T $(APP_LDS) 
CFLGAS=-std=c99 -Wall -O2 -I$(SDK_INCLUDE_DIR)

all: avl.eapp 

avl.eapp: %.eapp: %.o $(SDK_APP_LIB)
	$(LD) $(LDFLAGS) -o $@ test.o avl_tree.o

%.o: test.c avl_tree.c
	$(CC) $(CFLGAS) -c $^

clean:
	rm -rf *.o *.eapp
