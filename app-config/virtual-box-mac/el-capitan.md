To install El Capitan on VirtualBox for Ubuntu follow the instructions mentioned at: https://www.youtube.com/watch?v=iHcxszAmqOI and http://techsviewer.com/how-to-install-mac-os-x-el-capitan-on-pc-on-virtualbox/

First download the vbox image and extract it.

``` bash
wget https://goo.gl/DIIFv4
```

After doing this, set up the virtual machine as mentioned in the instructions above.

Then run these commands:
``` bash
VBoxManage modifyvm "{YOUR VIRTUAL MACHINE'S NAME}" --cpuidset 00000001 000306a9 04100800 7fbae3ff bfebfbff
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "MacBookPro11,3"
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
```

The virtual machine should now be able to boot.

To adjust the resolution, run this command
``` bash
VBoxManage setextradata "{YOUR VIRTUAL MACHINE'S NAME}" "VBoxInternal2/EfiGopMode" NEW_NUMBER
# Where `NEW_NUMBER` = 0-5 > 640x480, 800x600, 1024x768, 1280x1024, 1440x900, 1900x1200
```
