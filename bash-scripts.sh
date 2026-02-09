# QUESTIONNAIRE PROGRAM SCRIPT #

#!/bin/bash

QUESTION1="What's your name?"
QUESTION2="Where are you from?"
QUESTION3="What's your favorite coding website?"


echo -e "\n~~ Questionnaire ~~\n"
echo $QUESTION1
read NAME
echo $QUESTION2
read LOCATION
echo $QUESTION3
read WEBSITE

echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"

# BINGO PROGRAM SCRIPT #

#!/bin/bash
# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"
NUMBER=$(( RANDOM % 75 + 1 ))
TEXT="The next number is, "
if (( NUMBER <= 15 ))
then
    echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then
    echo $TEXT I:$NUMBER
elif (( NUMBER < 46 ))
then
  echo $TEXT N:$NUMBER
elif [[ $NUMBER -lt 61 ]]
then
  echo $TEXT G:$NUMBER
else 
  echo $TEXT O:$NUMBER
fi


# COUNTDOWN PROGRAM SCIPT #
#!/bin/bash
# Program that counts down to zero from a given argument
echo -e "\n~~ Countdown Timer ~~\n"
if [[ $1 -gt 0 ]]
then
 : ' for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done'
  I=$1
while [[ $I -ge 0 ]]
  do echo $I 
  (( I-- ))
  sleep 1
 done 
else
  echo Include a positive integer as the first argument.
fi

# FORTUNE TELLER PROGRAM SCRIPT #

#!/bin/bash
#Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

GET_FORTUNE() {
  echo Ask a yes or no question:
  read QUESTION
}

until [[ $QUESTION == test? ]]
do
  GET_FORTUNE
done

echo ${RESPONSES[$N]}


