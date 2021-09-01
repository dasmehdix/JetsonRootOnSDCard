# The "ubuntu" in path can be different by your user name. Also, the name of SD card depend on your configuration. 
# So, you have to give your SD Card path here ‘/media/ubuntu/SD Root’
sudo cp -ax / ‘/media/ubuntu/SD Root’
cd ‘/media/ubuntu/SD Root’
cd /boot/extlinux
# Create a backup file
sudo cp extlinux.conf extlinux.conf.original
# Edit this.
sudo gedit /boot/extlinux/extlinux.conf