#!/bin/bash

while true; do
    workingTime="08:00"
    timeOff="16:00"
    studyTime="18:00"
    sleepingTime="22:00"    
    now=$(date +"%H:%M")

    if [ $now == $workingTime ]; then 
        echo "Masuk sini 2"
        notify-send "Mulai Kerja" "Waktunya kerja, ingat cicilan bank dan masa depan yang perlu diperjuangkan";
    elif [ $now == $timeOff ]; then 
        notify-send Istirahat "Istirahat dulu, badanmu sudah lelah, pekerjaannya dilanjut besok lagi";
    elif [ $now == $studyTime ]; then 
        notify-send "Mulai Belajar" "Waktunya belajar, ingat kamu harus terus berkembang untuk masa depan yang lebih baik. berhenti belajar = mati";
    elif [ $now == $sleepingTime ]; 
        then notify-send "Tidur" "Waktunya tidur. inget besok harus bangun pagi dan badannya jangan terlalu dipaksakan, kasian kalo sakit :)";
    fi
    echo "Reload"
    sleep 60
done
