asm:
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o magoc.s
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o magoc-toiuu.s
	arm-linux-gnueabihf-gcc -Wall -S toiuu.c -o toiuu.s
	arm-linux-gnueabihf-gcc -Wall -S toiuu.c -o toiuu-toiuu.s
all:
	arm-linux-gnueabihf-as magoc.s -o magoc.o && arm-linux-gnueabihf-gcc -o magoc magoc.o
	arm-linux-gnueabihf-as magoc-toiuu.s -o magoc-toiuu.o && arm-linux-gnueabihf-gcc -o magoc-toiuu magoc-toiuu.o
	arm-linux-gnueabihf-as toiuu.s -o toiuu.o && arm-linux-gnueabihf-gcc -o toiuu toiuu.o
	arm-linux-gnueabihf-as toiuu-toiuu.s -o toiuu-toiuu.o && arm-linux-gnueabihf-gcc -o toiuu-toiuu toiuu-toiuu.o
clean:
	rm -rf magoc toiuu magoc-toiuu toiuu-toiuu  magoc.o toiuu.o magoc-toiuu.o toiuu-toiuu.o
	
