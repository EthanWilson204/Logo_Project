bison -d gvlogo.y
flex gvlogo.l
gcc *.c -lfl -lSDL2 -lm

