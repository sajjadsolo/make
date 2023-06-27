add: insert object library clean base demo objecting space

#create add and sum file
insert:
	@touch add.c sub.c
	@echo "int add(int a,int b){ return a+b;} "> add.c
	@echo "int add(int a,int b){ return a-b;} " > sub.c
#create object file for add and sub
object:
	@gcc -c add.c
	@gcc -c sub.c
#create library for add and sub
library:
	@ar rs libbase.a add.o sub.o
#clean object file and c file
clean:
	@rm add.o sub.o add.c sub.c
#create harar file
base:
	@touch base.h
	@echo "int add(int,int); \nint sub(int,int); " > base.h
#create file for execute
demo:
	@touch demo.c
	@echo "#include<stdio.h> \n#include\"base.h\" \nint main()\n{\nprintf(" \"plus your number is:\" \"%d\"",add(50,60));\nprintf("\"your minus number is : \" \"%d\"",add(80,75));\nreturn 0;\n}" > demo.c

#object in library and demo
objecting:
	@gcc -c demo.c
	@gcc -o demo demo.o libbase.a
	@./demo
	
#space
space:
	 @echo "\n well done..."
