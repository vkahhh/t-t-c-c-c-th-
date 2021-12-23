all:
	gcc -mx32 -c magoc.s -o magoc.o && gcc -mx32 -o magoc magoc.o
	gcc -mx32 -c magoc-toiuu.s -o magoc-toiuu.o && gcc -mx32 -o magoc-toiuu magoc-toiuu.o
	gcc -mx32 -c toiuu.s -o toiuu.o && gcc -mx32 -o toiuu toiuu.o
	gcc -mx32 -c toiuu-toiuu.s -o toiuu-toiuu.o && gcc -mx32 -o toiuu-toiuu toiuu-toiuu.o
clean:
	rm -rf magoc.o magoc toiuu.o toiuu toiuu-toiuu.o toiuu-toiuu magoc-toiuu.o magoc-toiuu



