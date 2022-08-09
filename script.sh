#!/bin/sh
while true; 
  do 
    tput cup 0 0
    curl "wttr.in/Bielefeld?1npQ&lang=de"; 
    sleep 2; 
    STARTPOS=1; 
    tput dim
    tput cup 0 0
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    clear; 
    tput cup 0 0
    curl "wttr.in/moon@2022-08-09&land=de"; 
    sleep 2; 
    STARTPOS=1; 
    tput cup 0 0
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    clear;
done 
