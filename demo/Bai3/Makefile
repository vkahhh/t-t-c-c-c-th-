all:
	gcc -o magoc magoc.c
	gcc -o toiuu toiuu.c
asm:
	gcc -Wall -S magoc.c -o magoc.s
	gcc -Wall -S toiuu.c -o toiuu.s
run:
	gcc -c magoc.s -o magoc.o
	gcc -o magoc magoc.o
	gcc -c toiuu.s -o toiuu.o
	gcc -o toiuu toiuu.o
clean:
	rm -rf toiuu toiuu.s magoc magoc.s
