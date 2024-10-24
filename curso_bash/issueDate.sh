#!/bin/bash
# Producir la fecha, la hora, minutos y segundos

user=$USER
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)

echo "Year: $year"
echo "Month: $month"
echo "Day: $day"

hour=$(date +%H)
minutes=$(date +%M)
seconds=$(date +%S)

echo "Hour: $hour"
echo "Minutes: $minutes"
echo "Seconds: $seconds"

echo "La fecha con horas minutos y segundos:"
echo "$day/$month/$year $hour:$minutes:$seconds"
