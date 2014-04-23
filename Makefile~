#
# Makefile for non-Microsoft compilers
#
include ./Makefile.config

PROJS = \
	proj-readInData \
	\

all: Core $(PROJS)

Core:
	$(MAKE) -C snap-core

clean:
	$(MAKE) clean -C snap-core

proj-%: proj-%.cpp $(SNAP)/Snap.o
	$(CC) $(CXXFLAGS) -o $@ $@.cpp $(SNAP)/Snap.o -I$(SNAP) -I$(GLIB) $(LDFLAGS) $(LIBS)