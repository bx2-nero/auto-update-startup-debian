# Update, Upgrade, and Clean your Debian-based system automatically at every boot.

These are simple script and service file when placed in proper place can update, upgrade and clean your syystem at every boot.
And it creates a separate log file too.

---

Once you have downloaded/cloned the git. Move to the folder and open "updater.sh" file.
check for this line-
```
}> /home/username/Documents/ulog
```

Now rename "username" with your own username and save and close the file.

Now open the terminal and run these commands one by one-

```
$ sudo cp updater.sh /usr/local/bin/

$ sudo cp updater.service /etc/systemd/system/

$ sudo chmod 744 /usr/local/bin/updater.sh

$ sudo chmod 664 /etc/systemd/system/updater.service

$ sudo systemctl daemon-reload

$ sudo systemctl enable updater.service
```
That's it !!
Now everytime you boot-up your system it will automatically update, upgrade and clean your system.
And you will see a file in your Documents folder named "ulog" where you can see what updates were installed in the last boot.
Enjoy !!.
