#!/bin/bash

####The guessinggame.sh program should have the following behavior:
#1. When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
#2. If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
#3. If the user's guess is correct then they should be congratulated and the program should end.
#4. The program should not end until the user has entered the correct number of files in the current directory.
#5. The program should be able to be run by entering bash guessinggame.sh into the console.
#6.The program should contain at least one function, one loop, and one if statement.
#7.The program should be more than 20 lines of code but less than 50 lines of code.

echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "                            Shahiid's  Guessing Game                           "
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="

number=$( ls | wc -l )
current_directory=`pwd`
echo "Hello $USER, How many files are in the $current_directory?" 
read input_number

while [ -z $input_number ]
do
read input_number
done

    while [ $input_number -ne "$number" ]
    do    
        if [ $input_number -lt $number ]
	then
	  echo "Too low, Try again!"

	elif [ $input_number -gt $number ]
	then
	  echo "Too high, Try again!"
        fi
        read input_number
    done
if [ $input_number -eq $number ]
then
     echo -e "\nThat's great! The number of files is $input_number: CONGRATULATIONS!!.\n"
else
     echo -e "\nWrong input, Try again.\n"
fi

echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Press [enter] key to continue. . .";
read pressedKey
