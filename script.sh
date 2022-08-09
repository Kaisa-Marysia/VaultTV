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
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" ''; 
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
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" ''; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    tput cup 0 0
    clear
    curl -s 'wttr.in/{Paderborn,Detmold,Hannover,Muenster,}?format=3&lang=de';
    sleep 2;
    STARTPOS=1; 
    tput dim
    tput cup 0 0
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" ''; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    tput sgr0
    tput cup 0 0
    clear;
    curl -s "https://dbf.finalrewind.org/Bielefeld%20Hbf?mode=json&version=3" | jq -r '.departures[] | {scheduledDeparture,train,trainNumber,destination,platform} | select (.scheduledDeparture!=null)' | jq -r '"\(.scheduledDeparture), \(.train), \(.trainNumber), \(.destination), \(.platform)"' | awk 'ORS="\n"' | column -t -s ',' | head -n 10
    sleep 2;
    STARTPOS=1; 
    tput cup 0 0
      while [ $STARTPOS -le 60 ]; 
        do 
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" ''; 
          STARTPOS=$(( $STARTPOS + 1 )); 
          sleep 0.01; 
        done
    tput cup 0 0
    clear;

done
