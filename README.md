# JetsonRootOnSDCard
This repo made for eMMC mounted Nvidia Jetsons to root(boot) system on a SD Card. 
### HOW
Assume that your configuration of memory paths,
```(eMMC Path) root=/dev/mmcblk0p1```
```(SD Card Path) root=/dev/mmcblk1p1```

First, you have to format your SD Card by ext4 file system. After format copy the path of the SD Card and paste it to ```sudo cp -ax / ‘PASTE HERE’```(line3) and ```cd ‘PASTE HERE’```(line 4) in ```emmcToSdCard.sh```file. This script is going to copy the files from eMMc to SD Card & also backup your configuration. After run this script a window is going to opened. You have to change LABEL, MENU LABEL and ROOT path(located in the end of the paragraph) like below. So, system will understand that SD Card is first option for boot device.
```
TIMEOUT 30
DEFAULT sdcard

MENU TITLE p2371-2180 eMMC boot options

LABEL sdcard
MENU LABEL SD Card
LINUX /boot/Image
INITRD /boot/initrd
FDT /boot/tegra210-jetson-tx1-p2597-2180-a01-devkit.dtb
APPEND fbcon=map:0 console=tty0 console=ttyS0,115200n8 androidboot.modem=none androidboot.serialno=P2180A00P00940c003fd androidboot.security=non-secure tegraid=21.1.2.0.0 ddr_die=2048M@2048M ddr_die=2048M@4096M section=256M memtype=0 vpr_resize usb_port_owner_info=0 lane_owner_info=0 emc_max_dvfs=0 touch_id=0@63 video=tegrafb no_console_suspend=1 debug_uartport=lsport,0 earlyprintk=uart8250-32bit,0x70006000 maxcpus=4 usbcore.old_scheme_first=1 lp0_vec=${lp0_vec} nvdumper_reserved=${nvdumper_reserved} core_edp_mv=1125 core_edp_ma=4000 gpt android.kerneltype=normal androidboot.touch_vendor_id=0 androidboot.touch_panel_id=63 androidboot.touch_feature=0 androidboot.bootreason=pmc:software_reset,pmic:0x0 net.ifnames=0 root=/dev/mmcblk1p1 rw rootwait

LABEL internalemmc
MENU LABEL Internal EMMC
LINUX /boot/Image
INITRD /boot/initrd
FDT /boot/tegra210-jetson-tx1-p2597-2180-a01-devkit.dtb
APPEND fbcon=map:0 console=tty0 console=ttyS0,115200n8 androidboot.modem=none androidboot.serialno=P2180A00P00940c003fd androidboot.security=non-secure tegraid=21.1.2.0.0 ddr_die=2048M@2048M ddr_die=2048M@4096M section=256M memtype=0 vpr_resize usb_port_owner_info=0 lane_owner_info=0 emc_max_dvfs=0 touch_id=0@63 video=tegrafb no_console_suspend=1 debug_uartport=lsport,0 earlyprintk=uart8250-32bit,0x70006000 maxcpus=4 usbcore.old_scheme_first=1 lp0_vec=${lp0_vec} nvdumper_reserved=${nvdumper_reserved} core_edp_mv=1125 core_edp_ma=4000 gpt android.kerneltype=normal androidboot.touch_vendor_id=0 androidboot.touch_panel_id=63 androidboot.touch_feature=0 androidboot.bootreason=pmc:software_reset,pmic:0x0 net.ifnames=0 root=/dev/mmcblk0p1 rw rootwait
```
SAVE IT!
Now, you can reboot the system.

## Future
Different rooting scripts are going to be added. Also, rooting on Nvm-ssd from eMMC or SD Card will be added.
