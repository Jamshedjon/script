#!/bin/bash
# Get date and time
DATE=$(date +"%m-%d-%y")
######################### Colours ############################
ON_BLUE=$(echo -e "\033[44m")
RED=$(echo -e "\033[1;31m")
BLUE=$(echo -e "\033[1;34m")
GREEN=$(echo -e "\033[1;32m")
STD=$(echo -e "\033[0m") # Clear colour
##############################################################
echo "_____________________________________"
echo " "
echo "${GREEN} Title ${STD}"
echo " "
echo " ${RED} Message${STD}"
echo " "
echo "${GREEN} DATE:$DATE ${STD}"
echo "_____________________________________"
echo " "
######################## BOT INFO ############################
BOT_TOKEN="6945997363:AAF7lLwQ95L2mjkZOP-In-uP5O-KXaDEp8o"
CHAT_ID="5412384222"
file_path="/home/jmsh_cyber/Downloads/sudoku.tar.gz"

# Function to send a file to Telegram
send_file() {
 local file_path="$1"
 local caption="$2"
 curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendDocument" \
 -F "chat_id=$CHAT_ID" \
 -F "document=@$file_path" \
 -F "caption=$caption"
}
send_file "$1" "Your file is here." > /dev/null
echo " ${ON_BLUE} File Upload Complete ${STD}"
send_file "$1" "Your file2 is here." > /dev/null
echo " ${ON_BLUE} File2 Upload Complete ${STD}"