CFLAGS += -std=c99 -Wall -Wextra -pedantic

APP = extract-hotline-miami-soundtrack

all: $(APP)

$(APP): extract.o
	$(LINK.o) $< -o $@

extract.o: extract.c

clean:
	$(RM) -f $(APP) extract.o

.PHONY: all clean
