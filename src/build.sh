clang main.c -DDEBUG=0 -O3 -S -o main.asm -fno-builtin-memset -fno-tree-vectorize -fno-unroll-loops
sed -i 's/\.L/L/g' main.asm
cocas --target cdm16 --output bin.img --debug bin.dbg.json main.asm start.asm 