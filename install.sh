#!/bin/sh

echo "INSTALLING..."
echo -n "}> /home/" >> updater.sh
echo -n $USER >> updater.sh
echo -n "/Documents/update.log" >> updater.sh
sudo cp updater.sh /usr/local/bin/
sudo cp updater.service /etc/systemd/system/
sudo chmod 744 /usr/local/bin/updater.sh
sudo chmod 664 /etc/systemd/system/updater.service
sudo systemctl daemon-reload
sudo systemctl enable updater.service
echo "INSTALL COMPLETED !!!"
echo "You can find update-log in your Documents folder"
