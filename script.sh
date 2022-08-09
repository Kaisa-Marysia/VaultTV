#!/bin/sh
while true; 
  do 
    curl "wttr.in/Bielefeld?1npQ&lang=de"; 
    sleep 10; 
    STARTPOS=1; 
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    clear; 
    curl "wttr.in/moon@2022-08-09&land=de"; 
    sleep 10; 
    STARTPOS=1; 
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    clear;
done 
