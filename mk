VPATH = src
CFLAGS = -ansi -pedantic -Wall -Werror
objects = $(addprefic obj/, main.o)

bin/program: $(obects) | bin
	
	g++ -o $@ $(objects)

obj/%.o: %.cpp
	
	g++ $(CFLAGS) -c -o $@ $<

obj/main.o: 


$(objects): | obj

bin:
	mkdir bin
obj:

	mkdir obj
clean:

	rm -rf obj bin
