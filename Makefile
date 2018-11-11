all: hello

hello.o: hello.S
	nasm -f macho64 hello.S	

hello: hello.o
	ld -macosx_version_min 10.7.0 hello.o -o hello

clean:
	rm -f hello hello.o
