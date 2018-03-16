#!/usr/bin/env bash
# File: guessinggame.sh

nbFiles=$(ls -l | wc -l)

function verifGuess {
  if [[ $guessNb -gt $nbFiles ]]
  then
    echo "too high! Try again"
  elif [[ $guessNb -lt $nbFiles ]]
  then
    echo "too low! Try again"
  fi
}

while [[ $guessNb -ne $nbFiles ]]
do
    echo "Enter how many files you think are in your directory"
    read guessNb
    verifGuess

done

echo "Congratulations! Your guess was correct!"
