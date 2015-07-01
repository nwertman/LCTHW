CFLAGS=-Wall -g
CC=cc
TARGETS=ex1 ex3 ex4

all: $(TARGETS)

%: %.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf $(addsuffix .dSYM, $(TARGETS))
	rm -f $(TARGETS)
