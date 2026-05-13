all: bin.img

bin.img:main.asm start.asm
	cocas --target cdm16 --output bin.img --debug bin.dbg.json main.asm start.asm 

main.asm:main.c Makefile
	/home/e_ustimov/nightly/bin/clang main.c --target=cdm-unknown-unknown-cocas -DDEBUG=0 -O2 -S -o main.asm -fno-builtin-memset -Wall -Wextra -Werror
	
