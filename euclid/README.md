#Euclids Algorithm or Greatest Common Divisor Problem

- gcd.pl 
- euclid.c (using 3 different methods)
- Euclid.java (using 3 different methods)
- euclid.php and euclidpage.php (using 3 different methods)
- euclid.pas pascal version
- euclid.f fortran version
- euclid.cob COBOL version
- euclid.awk AWK version

The c and java versions show 3 different functions which calculate the gcd, tow are loops (a while loop, and a do-while/do-until loop), the third version is a function which recursively calls itself, this is a very neat way to do it but it takes a bit of thought to get your head around the recursive call.


#Compiling
##C(gcc using make)
make

##Java (using JDK)
javac Euclid.java

##Pascal - Free Pascal (www.freepascal.org)
fpc eculid.pas

##Fortran (gcc/gfortran)
gfortran -o euclid euclid.f

##COBOL (OpenCobol/gnuCobol)
cobc -x euclid.cob

##Running AWK
awk -f euclid.awk
