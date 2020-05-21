clear

#colors
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
purple='\033[1;95m'
cyan='\033[1;96m'
blue='\033[1;94m'
white='\033[1;97m'

#logo
cd Data_Files/
cat data_00 | lolcat -animate

#font
echo -e "$green "
echo -e "This Tool is used to add Banner"
echo -e "---------------------------------------"
echo -e "Tool Vertion : 1.0v"
echo -e "$red"
echo

#font
echo -e "Select Your Sample Style"
echo -e "------------------------"
echo -e "$yellow"
figlet figlet
toilet toilet
echo -e "$green"
echo -e "Type you font style :"
echo -e "-------------------"
echo -e "Ex: toilet"
echo -e "$white"
read font
echo

#banner
echo -e "$green"
echo -e "What is your banner name ? "
echo -e "------------------------------"
echo -e "$white"
read varbanner
echo

#animate
echo -e "$yellow"
echo -e "If you want to add animation"
echo -e "-------------------------------"
echo -e "#Please type 'animate' "
echo -e "#If you dont want just press enter"
echo -e "$white"
read anime
echo

#cowsay
echo -e "$green"
echo -e "What is your cowsay name ?"
echo -e "------------------------------"
echo -e "$white"
read varcowsay
echo

#Delete
rm -rf /data/data/com.termux/files/usr/etc/motd
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/apphoru

#create temp
echo "cowsay -f eyes "$varcowsay" | lolcat " > Temp2.txt
echo "$font "$varbanner" | lolcat --"$anime"" > Temp3.txt
echo "clear" > Temp1.txt

#Replacing
cp data_02 /data/data/com.termux/files/usr/etc/
cp data_03 /data/data/com.termux/files/usr/etc/
cd /data/data/com.termux/files/usr/etc/
mv data_02 bash.bashrc
mv data_03 zshrc
cd /data/data/com.termux/files/home/AH-banner/Data_Files/

# Dual injecting
cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp3.txt" >> /data/data/com.termux/files/usr/etc/zshrc

cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp3.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#delete temp files
rm -rf Temp1.txt                                                                                                      rm -rf Temp2.txt
rm -rf Temp3.txt

#finish
termux-open-url https://www.youtube.com/channel/UCaZUWHSho8-s3GECYrhBwqg
figlet Finish | lolcat
exit