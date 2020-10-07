#!/bin/bash

# Bash Trap - catches Ctrl-C
trap bashtrap INT
bashtrap() {
    echo "\nBASH TRAP ACTIVATED"
}

# Reading Input
#read -p "Username: " USERNAME
#read -sp "Password: " PASSWORD
#echo
#echo "Username: $USERNAME    Password: $PASSWORD"

# Math
#a=$(( 4 + 5 ))
#b=$(( $a + 1 ))
#c=${#b}          # Length of b --> b==10 --> len(b)==2

# If Statements
#if [ $1 -gt 100 ]; then
    #echo "$1 is a big number"
#elif [ $1 -lt 100 ]; then
    #echo "$1 is a small number"
#else
    #echo "$1 is 100"
#fi

# Case Statement
#case $(( $1 % 2 )) in
    #0)
        #echo "$1 is even"
        #;;
    #1)
        #echo "$1 is odd"
        #;;
    #*)
        #echo "IMPOSSIBLE!"
        #;;
#esac

# Test Operators
# !EXPRESSION --> Logical Not
# -n STRING --> Length of the STRING > 0
# -z STRING --> Length of the STRING == 0, ie: empty
# STRING1 = STRING2 --> Equality
# INT1 -eq INT2 --> Equality
# -[rwx] FILE --> FILE exists and is [readable, writable, executable]
# -d FILE --> FILE exists and is a directory
# -e FILE --> FILE exists
# -s FILE --> FILE exists and is nonempty

# Loops
#counter=0
#while [ $counter -lt 10 ]; do
    #echo $counter
    #(( counter++ ))
#done

#until [ $counter -eq 10 ]; do
    #echo $counter
    #(( counter++ ))
#done

#for i in {10..0..2}; do
    #echo $i
#done

# Piping Example - cat salesdata.txt | ./tutorial.sh
#cat /dev/stdin | cut -d' ' -f 2,3 | sort
#echo $(cat /dev/stdin | wc -l)

# Get Logins
#last | grep "$USER" | grep "$(date +"%a %b %_d")"

# Useful Notes
# Press Ctrl-Alt-F<1-7> to change consoles
#    Normally, we use the GUI F7
#    If something locks up, press Ctrl-Alt-F2 to get other console

# Xargs Example - Create backup files for directory
#ls | xargs -n1 -i cp {} {}.bak    # -n1: apply command to each individual item
                                  ## -i: use a replacement string, defaults to {}
#rm *.bak

# Find Example - Find all files over 200Mb
find $PWD -size +200M -exec ls -sh {} \;
