# Benchmarks for Keystone Enclave

Includes benchmarks for SHA256, AVL Tree, Base64 encoding, matrix mulitplication and finding the max element in an array.
t:
Clone into the SDK directory. Run `make` and copy binaries into the bin folder.

## Setup

### Install dependencies
```bash
pip install pandas matplotlib jupyter
```

### Launch juypter server on Firesim manager 
```bash
jupyter notebook --no-browser --port=8080
```

### SSH tunnel into jupyter server
```bash
ssh -i firesim.pem -N -L 8080:localhost:8080 <manager host>@<manager ip>
```

## Commands
```
make
```

```
make clean
```
