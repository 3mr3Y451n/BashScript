#!/bin/bash

#Yazar: Emre Yasin Albayrak
#Tüm hakları saklıdır!
#Haydi başlayalım

#Shell Prompt
echo ------------
echo -e "Shell Prompt\n"

date
cal
pwd
ls
echo

echo What is your name?
read ad
echo Hello, $ad

echo ---------------------
echo Using Shell Variables

#Defining Variables
echo ------------------
echo -e "Defining Variables\n"

NAME="Emre Yasin"

VAR1="Emre Yasin"
VAR2=100
echo $NAME
echo $VAR1
echo $VAR2

#Accessing Values
echo ----------------
echo -e "Accessing Values\n"

NAME="Emre Yasin"
echo $NAME

#Read-only Variables"
echo -------------------
echo -e "Read-only Variables\n"

echo -e "read-only değişkeni değiştirmeye çalıştığımızda \nhata verdiği için örnek çıktı gösteremiyoruz"
ad="Emre"
readonly ad
#	ad="Yasin"
#	The above script will generate the following result –
#	/bin/sh: ad: This variable is read only.

echo

#Unsetting Variables
echo -------------------
echo -e "Unsetting Variables\n"

NAME="Emre Yasin"
echo "unset öncesi değişkenin değeri: ${NAME}"
unset NAME
echo -e "unset sonrası değişkenin değeri: ${NAME}\n"

#Special Variables
echo -----------------
echo -e "Special Variables\n"

#	Variable 	Description
#	$0			The filename of the current script.
#	$n			
#These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
#	$#			The number of arguments supplied to a script.
#	$*
#All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
#	$@
#All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
#	$?			The exit status of the last command executed.
#	$$			The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
#	$!			The process number of the last background command.

echo

#Command-Line Arguments
echo ----------------------
echo -e "Command-Line Arguments\n"

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

echo

#Special Parameters Usd* and Usd@
echo --------------------------------
echo -e "Special Parameters Usd* and Usd@\n"

for parametre in $*
do
	echo $parametre
done

for parametre in $@
do
	echo $parametre
done

echo

#Defining Array Values
echo ---------------------
echo -e "Defining Array Values\n"

NAME[0]="Emre"
NAME[1]="Yasin"
NAME[2]="Ömer"
NAME[3]="Kaan"
NAME[4]="Kerem"
NAME[5]="Sait"

#Accessing Array Values
echo ----------------------
echo -e "Accessing Array Values\n"

echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

echo

#Unix — Shell Basic Operators
echo ----------------------------
echo -e "Unix — Shell Basic Operators\n"

echo Arithmetic Operators
echo Relational Operators
echo Boolean Operators
echo String Operators
echo -e "File Test Operators\n"

#Bourne shell didn't originally have any mechanism to perform simple arithmetic operations but it uses external programs, either awk or expr.
#There must be spaces between operators and expressions. For example, 2+2 is not correct; it should be written as 2 + 2.
#The complete expression should be enclosed between ‘ ‘, called the inverted commas.

val=`expr 2 + 2`
echo "expr 2 + 2 teriminin sonucu: $val"

echo

#Arithmetic Operators
echo --------------------
echo -e "Arithmetic Operators\n"

#Operator			Description	Example
#	+	Addition - Adds values on either side of the operator 
#`expr $a + $b` will give 30
#	-	Subtraction - Subtracts right hand operand from left hand operand 
#`expr $a - $b` will give -10
#	*	Multiplication - Multiplies values on either side of the operator 
#`expr $a \* $b` will give 200
#	/	Division - Divides left hand operand by right hand operand 
#`expr $b / $a` will give 2
#	%	Modulus - Divides left hand operand by right hand operand and returns remainder 
#`expr $b % $a` will give 0
#	=	Assignment - Assigns right operand in left operand 
#a=$b #would assign value of b into a
#	==	Equality - Compares two numbers, if both are same then returns true. 
#[ $a == $b ] would return false.
#	!=	Not Equality - Compares two numbers, if both are different then returns true. 
#[ $a != $b ] would return true.

echo

a=10
b=20
echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

val=`expr $a + $b`
echo "a + b : $val"
val=`expr $a - $b`
echo "a - b : $val"
val=`expr $a \* $b`
echo "a * b : $val"
val=`expr $b / $a`
echo "b / a : $val"
val=`expr $b % $a`
echo "b % a : $val"
if [ $a == $b ]
then
	echo "a is equal to b"
fi

if [ $a != $b ]
then
	echo "a is not equal to b"
fi

#Relational Operators
echo --------------------
echo -e "Relational Operators\n"

#Operator		Description		Example
#-eq			Checks if the value of two operands are equal or not; if yes, then the condition becomes true.
#[ $a -eq $b ] is not true.

#-ne			Checks if the value of two operands are equal or not; if values are not equal, then the condition becomes true.
#[ $a -ne $b ] is true.

#-gt			Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.
#[ $a -gt $b ] is not true.

#-lt			Checks if the value of left operand is less than the value of right operand; if yes, then the condition becomes true.
#[ $a -lt $b ] is true.

#-ge			Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true.
#[ $a -ge $b ] is not true.

#-le			Checks if the value of left operand is less than or equal to the value of right operand; if yes, then the condition becomes true.
#[ $a -le $b ] is true.

a=10
b=20

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"
if [ $a -eq $b ]
then
	echo "$a -eq $b : a is equal to b"
else
	echo "$a -eq $b: a is not equal to b"
fi

if [ $a -ne $b ]
then
	echo "$a -ne $b: a is not equal to b"
else
	echo "$a -ne $b : a is equal to b"
fi

if [ $a -gt $b ]
then
	echo "$a -gt $b: a is greater than b"
else
	echo "$a -gt $b: a is not greater than b"
fi

if [ $a -lt $b ]
then
	echo "$a -lt $b: a is less than b"
else
	echo "$a -lt $b: a is not less than b"
fi

if [ $a -ge $b ]
then
	echo "$a -ge $b: a is greater or equal to b"
else
	echo "$a -ge $b: a is not greater or equal to b"
fi

if [ $a -le $b ]
then
	echo "$a -le $b: a is less or equal to b"
else
	echo "$a -le $b: a is not less or equal to b"
fi

echo

#Boolean Operators
echo -----------------
echo -e	"Boolean Operators\n"

#Operator	Description																				        		Example
#	!		This is logical negation. This inverts a true condition into false and vice versa.						[ ! false ] is true.
#	-o		This is logical OR. If one of the operands is true, then the condition becomes true.					[ $a -lt 20 -o $b -gt 100 ] is true.
#	-a		This is logical AND. If both the operands are true, then the condition becomes true otherwise false.	[ $a -lt 20 -a $b -gt 100 ] is false.


a=10
b=20

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

if [ $a != $b ]
then
	echo "$a != $b : a is not equal to b"
else
	echo "$a != $b: a is equal to b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
	echo "$a -lt 100 -a $b -gt 15 : returns true"
else
	echo "$a -lt 100 -a $b -gt 15 : returns false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
	echo "$a -lt 100 -o $b -gt 100 : returns true"
else
	echo "$a -lt 100 -o $b -gt 100 : returns false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
	echo "$a -lt 100 -o $b -gt 100 : returns true"
else
	echo "$a -lt 100 -o $b -gt 100 : returns false"
fi

echo

#String Operators
echo ----------------
echo -e "String Operators\n"

#Operator	Description																											Example
#	=		Checks if the value of two operands are equal or not; if yes, then the condition becomes true.						[ $a = $b] is not true.
#	!=		Checks if the value of two operands are equal or not; if values are not equal then the condition becomes true.		[ $a != $b ] is true.
#	-z		Checks if the given string operand size is zero; if it is zero length, then it returns true.						[ -z $a ] is not true.
#	-n		Checks if the given string operand size is non-zero; if it is non- zero length, then it returns true.				[ -n $a ] is not false.
#	str		Checks if str is not the empty string; if it is empty, then it returns false.										[ $a ] is not false.

a="abc"
b="efg"

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

if [ $a = $b ]
then
	echo "$a = $b : a is equal to b"
else
	echo "$a = $b: a is not equal to b"
fi
if [ $a != $b ]
then
	echo "$a != $b : a is not equal to b"
else
	echo "$a != $b: a is equal to b"
fi
if [ -z $a ]
then
	echo "-z $a : string length is zero"
else
	echo "-z $a : string length is not zero"
fi
if [ -n $a ]
then
	echo "-n $a : string length is not zero"
else
	echo "-n $a : string length is zero"
fi
if [ $a ]
then
	echo "$a : string is not empty"
else
	echo "$a : string is empty"
fi

echo

#File Test Operators
echo -------------------
echo -e "File Test Operators\n"

#	Operator	Description																												Example
#-b file		Checks if file is a block special file; if yes, then the condition becomes true.										[ -b $file ] is false.
#-c file		Checks if file is a character special file; if yes, then the condition becomes true.									[ -c $file ] is false.
#-d file		Checks if file is a directory; if yes, then the condition becomes true.													[ -d $file ] is not true.
#-f file		Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.	[ -f $file ] is true.
#-g file		Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.							[ -g $file ] is false.
#-k file		Checks if file has its sticky bit set; if yes, then the condition becomes true.											[ -k $file ] is false.
#-p file		Checks if file is a named pipe; if yes, then the condition becomes true.												[ -p $file ] is false.
#-t file		Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.				[ -t $file ] is false.
#-u file		Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.								[ -u $file ] is false.
#-r file		Checks if file is readable; if yes, then the condition becomes true.													[ -r $file ] is true.
#-w file		Checks if file is writable; if yes, then the condition becomes true.													[ -w $file ] is true.
#-x file		Checks if file is executable; if yes, then the condition becomes true.													[ -x $file ] is true.
#-s file		Checks if file has size greater than 0; if yes, then condition becomes true.											[ -s $file ] is true.
#-e file		Checks if file exists; is true even if file is a directory but exists.													[ -e $file ] is true.

file="/var/www/tutorialspoint/unix/test.sh"
if [ -r $file ]
then
	echo "File has read access"
else
	echo "File does not have read access"
fi

if [ -w $file ]
then
	echo "File has write permission"
else
	echo "File does not have write permission"
fi

if [ -x $file ]
then
	echo "File has execute permission"
else
	echo "File does not have execute permission"
fi

if [ -f $file ]
then
	echo "File is an ordinary file"
else
	echo "This is special file"
fi

if [ -d $file ]
then
	echo "File is a directory"
else
	echo "This is not a directory"
fi

if [ -s $file ]
then
	echo "File size is zero"
else
	echo "File size is not zero"
fi

if [ -e $file ]
then
	echo "File exists"
else
	echo "File does not exist"
fi

echo


#Unix — Shell Decision Making
echo ----------------------------
echo -e "Unix — Shell Decision Making\n"

#Unix Shell - The if...fi statement
echo ----------------------------------
echo -e "Unix Shell - The if...fi statement\n"

a=10
b=20

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

if [ $a == $b ]
then
    echo "a is equal to b"
fi

if [ $a != $b ]
then
    echo "a is not equal to b"
fi

#Unix Shell - The if...else...fi statement
echo -----------------------------------------
echo -e "Unix Shell - The if...else...fi statement\n"

a=10
b=20

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

if [ $a == $b ]
then
    echo "a is equal to b"
else
    echo "a is not equal to b"
fi

#Unix Shell - The if...elif...fi statement
echo -----------------------------------------
echo -e "Unix Shell - The if...elif...fi statement\n"

a=10
b=20

echo "a'nın değeri: ${a}"
echo -e "b'nın değeri: ${b}\n"

if [ $a == $b ]
then
    echo "a is equal to b"
elif [ $a -gt $b ]
then
    echo "a is greater than b"
elif [ $a -lt $b ]
then
    echo "a is less than b"
else
    echo "None of the condition met"
fi


#The case...esac Statement
echo -------------------------
echo -e "The case...esac Statement\n"

#Unix Shell - The case...esac Statement
echo --------------------------------------
echo -e "Unix Shell - The case...esac Statement\n"

FRUIT="kiwi"
case "$FRUIT" in
"apple") echo "Apple pie is quite tasty."
;;
"banana") echo "I like banana nut bread."
;;
"kiwi") echo "New Zealand is famous for kiwi."
;;
esac

option="${1}"
case ${option} in
-f) FILE="${2}"
echo "File name is $FILE"
;;
-d) DIR="${2}"
echo "Dir name is $DIR"
;;
*)
echo "`basename ${0}`:usage: [-f file] | [-d directory]"
###exit 1 # Command to come out of the program with status 1
;;
esac

#   Here is a sample run of the above program −
#   $./test.sh
#   test.sh: usage: [ -f filename ] | [ -d directory ]
#   $ ./test.sh -f index.htm
#   $ vi test.sh
#   $ ./test.sh -f index.htm
#   File name is index.htm
#   $ ./test.sh -d unix
#   Dir name is unix
#   $


#Unix — Shell Loop Types
echo -----------------------
echo -e "Unix — Shell Loop Types\n"

#Unix Shell - The while Loop
echo ---------------------------
echo -e "Unix Shell - The while Loop\n"

a=0
while [ $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done

#Unix Shell - The for Loop
echo -------------------------
echo -e "Unix Shell - The for Loop\n"
echo -e "ilk Örnek\n"

for var in a b c d e f g h i j
do
    echo $var
done

echo
echo -e "İkinci Örnek\n"
for FILE in $HOME/.bash*
do
    echo $FILE
done
echo

#Unix Shell - The until Loop
echo ---------------------------
echo -e "Unix Shell - The until Loop\n"

a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done

#Unix Shell - The select Loop
echo ----------------------------
echo -e "Unix Shell - The select Loop\n"

select DRINK in tea cofee water juice appe all none
do
    case $DRINK in
    tea|cofee|water|all)
        echo "Go to canteen"
    ;;
    juice|appe)
	
        echo "Available at home"
    ;;
    none)
        break
    ;;
    *) echo "ERROR: Invalid selection"
    ;;
    esac
done

#Nesting Loops
echo -------------
echo -e "Nesting Loops\n"

#Nesting while Loops
echo -------------------
echo -e "Nesting while Loops\n"

a=0
while [ $a -lt 10 ]
# this is loop1
do
	b=$a
	while [ $b -ge 0 ]
	# this is loop2
	do
		echo -n $b
		((b--))
	done
	echo
	((a++))
done

#Unix — Shell Loop Control
echo -------------------------
echo -e "Unix — Shell Loop Control\n"

#The infinite Loop
echo -----------------
echo -e "The infinite Loop\n"
echo -e "Sonsuz döngü örneğini burada veremiyorum\nKodların içinde yorum şeklinde var.\n"
#Here is a simple example that uses the while loop to display the numbers zero to nine −

#a=10
#until [ $a -lt 10 ]
#do
#	echo $a
#	a=`expr $a + 1`
#done

#The break Statement
echo -------------------
echo -e "The break Statement\n"

#Here is a simple example which shows that loop terminates as soon as a becomes 5:

echo -e "ilk Örnek\n"
a=0
while [ $a -lt 10 ]
do
    echo $a
    if [ $a -eq 5 ]
    then
		echo "değişken 5'e ulaştığı için dögüden çıkılıyor..."
        break
    fi
    a=`expr $a + 1`
done
echo
#Here is a simple example of nested for loop. This script breaks out of both loops if var1 equals 2 and var2 equals 0 –

echo -e "ikinci Örnek\nİçiçe Döngüde Break\n"
for var1 in 1 2 3
do
    for var2 in 0 5
    do
        if [ $var1 -eq 2 -a $var2 -eq 0 ]
        then
            break 2
        else
            echo "$var1 $var2"
        fi
    done
done

#The continue Statement
echo ----------------------
echo -e "The continue Statement\n"

#The following loop makes use of the continue statement which returns from the continue statement and starts processing the next statement −

NUMS="1 2 3 4 5 6 7"
for NUM in $NUMS
do
    Q=`expr $NUM % 2`
    if [ $Q -eq 0 ]
    then
        echo "Number is an even number!!"
        continue
    fi
    echo "Found odd number"
done
echo

#Unix — Shell Substitution
echo -------------------------
echo -e "Unix — Shell Substitution\n"

#Here, the printing value of the variable is substituted by its value. Same time, "\n" is substituted by a new line −

a=10
echo -e "Value of a is $a \n"

#You will receive the following result. Here the -e option enables the interpretation of backslash escapes.
#   Value of a is 10
#Following is the result without -e option:
#   Value of a is 10\n


#  Escape Description
#  \\     backslash
#  \a     alert (BEL)
#  \b     backspace
#  \c     suppress trailing newline
#  \f     form feed
#  \n     new line
#  \r     carriage return
#  \t     horizontal tab
#  \v     vertical tab

#Command Substitution
echo --------------------
echo -e "Command Substitution\n"

DATE=`date`
echo "Date is: $DATE"
USERS=`who | wc -l`
echo "Logged in user are: $USERS"
UP=`date ; uptime`
echo "Uptime is: $UP"

#Variable Substitution
echo ---------------------
echo -e "Variable Substitution\n"

#	Form			Description
#	${var}			Substitute the value of var.
#	${var:-word}	If var is null or unset, word is substituted for var. The value of var does not change.
#	${var:=word}	If var is null or unset, var is set to the value of word.
#	${var:?message}	If var is null or unset, message is printed to standard error. This checks that variables are set correctly.
#	${var:+word}	If var is set, word is substituted for var. The value of var does not change.

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"
echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"
unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"
var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"
echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"

#Unix — Shell Quoting Mechanisms
echo -------------------------------
echo -e "Unix — Shell Quoting Mechanisms\n"

#The Metacharacters
echo ------------------
echo -e "The Metacharacters\n"

echo "* ? [ ] ' \" \ $ ; & ( ) | ^ < > new-line space tab"

#echo Hello; World #BU SATIR HATA ALIR
echo Hello\; World
echo "I have \$1200"
echo

#	Quoting                               Description
#	Single quote	All special characters between these quotes lose their special meaning.
#	Double quote	Most special characters between these quotes lose their special meaning with these exceptions:
#                   ->           $
#                   ->           `
#                   ->           \$
#                   ->           \'
#                   ->           \"
#                   ->           \\
#	Backslash		Any character immediately following the backslash loses its special meaning.
#	Back quote		Anything in between back quotes would be treated as a command and would be executed.

#The Single Quotes
echo -----------------
echo -e "The Single Quotes\n"

#Consider an echo command that contains many special shell characters −
#echo <-$1500.**>; (update?) [y|n] #BU SATIR HATA ALIR
#Putting a backslash in front of each special character is tedious and makes the line difficult to read −
echo her özel karakterden önce ters bölü 
echo \<-\$1500.\*\*\>\; \(update\?\) \[y\|n\]
#There is an easy way to quote a large group of characters. Put a single quote (') at the beginning and at the end of the string −
echo tek tırnak içinde de aynı sonuç alınır
echo '<-$1500.**>; (update?) [y|n]'
echo $'It\'s Shell Programming'
echo 'It'\''s Shell Programming'
echo 
#The Double Quotes
echo -----------------
echo -e "The Double Quotes\n"

VAR=Emre

echo "$VAR owes <-\$1500.**>; [ as of (`date +%m/%d`) ]"

#Double quotes take away the special meaning of all characters except the following −
#	$ for parameter substitution
#	Backquotes for command substitution
#	\$ to enable literal dollar signs
#	\` to enable literal backquotes
#	\" to enable embedded double quotes
#	\\ to enable embedded backslashes
#	All other \ characters are literal (not special)

echo "It""'""s Shell Programming"


#The Backquotes
echo --------------
echo -e "The Backquotes\n"

DATE=`date`
echo -e "Current Date: $DATE\n"

#Unix — Shell Input / Output Redirections
echo ----------------------------------------
echo -e "Unix — Shell Input / Output Redirections\n"

#Output Redirection
echo ------------------
echo -e "Output Redirection\n"

ls -a
who > users
cat users
echo line 1 > users
cat users
ls -a

#You can use >> operator to append the output in an existing file as follows

echo line 2 >> users
cat users

#Input Redirection
echo -----------------
echo -e "Input Redirection\n"

wc -l users #komut satır sayısı ve dosya adını gösteriyor
#2 users

wc -l < users # stdin satır sayısı
#2

wc -m < users #stdin arakter sayısı
#14

wc -m < users #stdin harf sayısı
#4

echo İlk durumda, wc girdisini dosya users dan okuduğunu bilir.
echo dosya adını da görüntüler.
echo İkinci durumda, yalnızca girdisini stdin den okuduğunu bilir.
echo bu nedenle dosya adını görüntülemez.
echo

#Here Document
echo -------------
echo -e "Here Document\n"

#	The general form for a here document is −
#	command << delimiter
#	document
#	delimiter

#Following is the input to the command wc -l to count the total number of lines −
wc -l << EOF
This is a simple lookup program
for good (and bad) restaurants
in Cape Town.
EOF
# 3

#You can use the here document to print multiple lines using your script as follows −

cat << EOF
This is a simple lookup program
for good (and bad) restaurants
in Cape Town.
EOF
#	Upon execution, you will receive the following result −

#	This is a simple lookup program
#	for good (and bad) restaurants
#	in Cape Town.

#Discard the output
echo 
echo -e "Discard the output\n"

#Sometimes you will need to execute a command,
#but you don't want the output displayed on the screen.
#In such cases, you can discard the output by redirecting it to the file /dev/null

echo 'command > /dev/null'

#Here command is the name of the command you want to execute.
#The file /dev/null is a special file that automatically discards all its input.
#To discard both output of a command and its error output,
#use standard redirection to redirect STDERR to STDOUT
echo 'command > /dev/null 2>&1'

#Here 2 represents STDERR and 1 represents STDOUT.
#You can display a message on to STDERR by redirecting STDOUT into STDERR as follows
echo '"echo message 1>&2" komutunun sonucu'
echo message 1>&2
echo

#Redirection Commands
#	Command			Description
#	pgm > file 		Output of pgm is redirected to file
#	pgm < file 		Program pgm reads its input from file
#	pgm >> file 	Output of pgm is appended to file
#	n > file 		Output from stream with descriptor n redirected to file
#	n >> file 		Output from stream with descriptor n appended to file
#	n >& m 			Merges output from stream n with stream m
#	n <& m 			Merges input from stream n with stream m
#	<< tag 			Standard input comes from here through next tag at the start of line
#	|				Takes output from one program, or process, and sends it to another

#Note that the file descriptor 0 is normally standard input (STDIN),
#1 is standard output (STDOUT), and 2 is standard error output (STDERR).


#Unix — Shell Functions
echo ----------------------
echo -e "Unix — Shell Functions\n"

#Creating Functions
echo ------------------
echo -e "Creating Functions\n"

#To declare a function, simply use the following syntax
#	function_name () {
#		list of commands
#	}

# Define your function here
Hello () {
echo "Hello World"
}
# Invoke your function
Hello

#Pass Parameters to a Function
echo -----------------------------
echo -e "Pass Parameters to a Function\n"

# Define your function here
Hello () {
echo "Hello World $1 $2"
}
# Invoke your function
Hello Emre Yasin

#Returning Values from Functions
echo -------------------------------
echo -e "Returning Values from Functions\n"

#If you execute an exit command from inside a function,
#its effect is not only to terminate execution of the function
#but also of the shell program that called the function

#yani fonksiyondan exit ile çıkmayın!

echo 'syntax is as follows "return code"'

# Define your function here
Hello () {
	echo "Hello World $1 $2"
	return 10
}

# Invoke your function
Hello Emre Yasin

# Capture value returnd by last command
ret=$?
echo "Return value is $ret"

#Upon execution, you will receive the following result −
#	$./test.sh
#	Hello World Zara Ali
#	Return value is 10
#	$

#Nested Functions
echo ----------------
echo -e "Nested Functions\n"

#One of the more interesting features of functions is that
#they can call themselves and also other functions.
#A function that calls itself is known as a recursive function.

# Calling one function from another
number_one () {
	echo "This is the first function speaking..."
	number_two
}

number_two () {
	echo "This is now the second function speaking..."
}

# Calling function one.
number_one

#Upon execution, you will receive the following result
#This is the first function speaking...
#This is now the second function speaking...

#Function Call from Prompt
echo -------------------------
echo -e "Function Call from Prompt\n"

#You can put definitions for commonly used functions inside your .profile. These definitions
#will be available whenever you log in and you can use them at the command prompt.
#Alternatively, you can group the definitions in a file, say test.sh, and then execute the file
#in the current shell by typing
#	$. test.sh

#This has the effect of causing functions defined inside test.sh to be read and defined to
#the current shell as follows
#	$ number_one
#	This is the first function speaking...
#	This is now the second function speaking...
#	$

#To remove the definition of a function from the shell, use the unset command with the .f
#option. This command is also used to remove the definition of a variable to the shell.

#	$unset .f function_name

echo Şu fonksiyonları çağırmayı dene
echo "Hello"
echo "number_one"
echo -e "number_two\n"

echo "Ders Sonu"
echo ---------
