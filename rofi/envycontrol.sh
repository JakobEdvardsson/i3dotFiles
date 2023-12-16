#!/usr/bin/env bash

# Define an associative array:
typeset -A mode
# And its content:
mode=(
  	[Nvidia]="envycontrol -s nvidia --force-comp --coolbits 24"
  	[Hybrid]="envycontrol -s hybrid --rtd3"
  	[Integrated]="envycontrol -s integrated"
  	[Cancel]=""
)

selected="$(printf '%s\n' "${!mode[@]}" | sort | rofi -dmenu -p "Envycontrol" -i -lines 2)"
password="$(rofi -dmenu -password -i -no-fixed-num-lines -p "Password")"

command_to_run="${mode[${selected}]}"

echo "$password" | sudo -S $command_to_run
#echo "$password" | sudo -S $command_to_run
#echo "$password" | sudo -S powertop



#echo "${mode[${selected}]}"
#$password