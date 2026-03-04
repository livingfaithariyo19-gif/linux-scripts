#!/bin/bash

# Welcome message
echo "🧙 Welcome, young Linux Wizard!"
read -p "Enter your wizard name: " name
echo "Greetings, $name! Your Linux powers await."

while true; do
# Spell selection menu
echo ""
echo "Choose your spell:"
echo "1) Show current date and time"
echo "2) List files in current directory"
echo "3) Show your current path"
echo "4) Exit the wizard"

read -p "Enter the number of your spell: " choice

# Spell casting logic
if [[ $choice == "1" ]]; then
    date
elif [[ $choice == "2" ]]; then
    ls -l
elif [[ $choice == "3" ]]; then
    pwd
elif [[ $choice == "4" ]]; then
    echo "Farewell, $name. Your wizardry is strong!"
    exit 0
else
    echo "⚡ Invalid spell! Try again next time."
fi

done
