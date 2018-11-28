CC=riscv64-unknown-linux-gnu-g++
CFLGAS=
BENCHMARKS=base64.bin matmul.bin

all: $(BENCHMARKS)

$(BENCHMARKS): %.bin: %.o
	$(CC) $(CFLGAS) -o $@ $<

%.o: %.c
	$(CC) $(CFLGAS) -c $<

clean:
	rm -rf *.o $(BENCHMARKS)
