# Author: Don Stringham <donstringham@weber.edu>
.DEFAULT_GOAL=clean

# VARIABLES
CC=gcc
BUILD_TIME ?= $(shell date +%FT%T%z)
SDIR=./src
ODIR=$(SDIR)
BDIR=./bin

# TARGETS
all:
	-mkdir -p $(BDIR)

bld.ex01: $(SDIR)/ex01.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex01:
	@echo Running exercise 01...

bld.ex02: $(SDIR)/ex02.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex02:
	@echo Running exercise 02...

bld.ex03: $(SDIR)/ex03.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex03:
	@echo Running exercise 03...

bld.ex04: $(SDIR)/ex04.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex04:
	@echo Running exercise 04...

bld.ex05: $(SDIR)/ex01.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex05:
	@echo Running exercise 05...

bld.ex06: $(SDIR)/ex06.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex06:
	@echo Running exercise 06...

bld.ex07: $(SDIR)/ex07.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex07:
	@echo Running exercise 07...

bld.ex08: $(SDIR)/ex08.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex08:
	@echo Running exercise 08...

bld.ex09: $(SDIR)/ex09.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex09:
	@echo Running exercise 09...

bld.ex10: $(SDIR)/ex10.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex10:
	@echo Running exercise 10...

bld.ex11: $(SDIR)/ex11.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex11:
	@echo Running exercise 11...

bld.ex12: $(SDIR)/ex12.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex12:
	@echo Running exercise 12...

bld.ex13: $(SDIR)/ex13.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex13:
	@echo Running exercise 13...

bld.ex14: $(SDIR)/ex14.o
	$(CC) $(CFLAGS) -o $(BDIR)

run.ex14:
	@echo Running exercise 14...

release:
	git tag v$(V)
	@read -p "Press enter to confirm and push to origin ..." && git push origin v$(V)

.PHONY: clean
clean:
	-rm -r $(BDIR)
	-rm -f $(ODIR)/*.o
