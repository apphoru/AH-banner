clear

#Remove
echo -e "Removing Old files"
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/motd
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/apphoru

#Copy
echo -e "Replacing New files"
cd Data_Files/
cp data_01 /data/data/com.termux/files/usr/etc/
cp data_02 /data/data/com.termux/files/usr/etc/
cd /data/data/com.termux/files/usr/etc/
mv data_01 motd
mv data_02 bash.bashrc
bash AHdata.sh