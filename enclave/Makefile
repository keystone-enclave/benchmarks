CC=riscv64-unknown-linux-gnu-gcc
LD=riscv64-unknown-linux-gnu-ld
CFLGAS=-I/home/ubuntu/eyrie/sdk/lib/app/include
LDFLAGS=-T./app.lds
SDK_APP_LIB=libkeystone-eapp.a
BENCHMARKS=matmul.eapp base64.eapp

all: $(BENCHMARKS)

$(BENCHMARKS): %.eapp: %.o $(SDK_APP_LIB)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLGAS) -c $<

clean:
	rm -rf *.o $(BENCHMARKS)
