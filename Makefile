# cs335 lab1
# to compile your project, type make and press enter
CFLAGS = -I ./include
LIB    = ./libggfonts.so
LFLAGS = $(LIB) -lrt -lx11 -lGLU -lGL -pthread -lm  #-lXrandr
all: lab1

lab1: lab1.cpp ppm.c log.c
	g++ $(CFLAGS) lab1.cpp log.c -Wall -Wextra $(LFLAGS) -olab1 -lX11 -lGL -lGLU -lm

clean:
	rm -f lab1
	rm -f *.o

