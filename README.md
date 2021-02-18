# Hackintosh_Main

• macOS: Catalina 10.15.7  
• OpenCore: 0.6.6 RELEASE (February 2021)  
• Related kexts: latest RELEASE (February 2021)

\>>> Hardware

\- GIGABYTE GA-Z87X-OC // rev 1.1  
\- Intel Core i7-4770K // Q2'13 (Haswell)  
\- Intel HD Graphics 4600  
\- NVIDIA GeForce GFX 770 // ASUS 2 GB GDDR5  
\- Crucial Ballistix Tactical // DDR3 1600 MHz CL8 (2 x 8 GB)  
\- Broadcom BCM94360CD // 802.11ac + Bluetooth 4.0  
\- Samsung SSD 850 EVO // SATA 250 GB  
\- Cooler Master B700 // 700W

\>>> We need a USB Flash Drive (64 MB+) to write fpt_RU.iso

#### Windows

Open rufus, select fpt_RU.iso, flash to USB

#### macOS

``` # dd if=/path/to/fpt_RU.iso of=/dev/rdiskX && sync ```

#### Linux

``` # dd if=/path/to/fpt_RU.iso of=/dev/sdX && sync ```

### BIOS: F8 (This version fixes a lot of issues)

1. Problematic memory map (issues with wake from sleep, happening even on Linux)

- Kernel trap at ... type=13 (memory protection)  
- Kernel trap at ... type=14 (page fault)  
- a freed zone element has been modified in X expected Y  
- Possible memory corruption: pmap_pv_remove  
- and so on...

2. Conflicting RTC memory offset: 8A (inside IOHibernateRTCVariables)

> This prevent macOS from going into hibernation, resulting in a CMOS reset

#### This motherboard has proprietary DualBIOS technology, so we need to update the BIOS twice.

First, shutdown PC and remove power cord. Then, switch to the Backup BIOS (BIOS_SW > 2)

### To boot from fpt_RU USB, make sure you have the following settings in BIOS

\- BIOS Features > Windows 8 Features: Other OS  
\- BIOS Features > Boot Mode Selection: UEFI and Legacy  
\- Peripherals > Legacy USB Support: Enabled

\>>> Power on PC, press F12 key, select the Legacy option (not "UEFI: "), then wait until you see a green output "FPT Operation Passed"

> -savemac argument will save our own MAC Address, so we don't need to reflash it later

CTRL+ALT+DEL to restart

#### Now the PC will shutdown twice. When it boot for the 3rd time press F12 key, select the UEFI option ("UEFI: ")

> This will enter RU environment. This tool allows us to edit different BIOS settings, so it's __very__ dangerous!

Now we need to disable VT-d

> This removes DMAR table from ACPI stack

This option is hidden in BIOS (because of my specific CPU)

\- Press Alt + = for UEFI Variables  
\- Scroll down with PgDown key, select Setup [EC87D643-EBA4-4BB5...], Size: 0x9B4  
\- Scroll down with Ctrl+PgDown, select Variable: 0x2A0 (Value should be 0x1, Enabled)  
\- Press Enter key, type 0 (to Disable), Enter key again, then Ctrl + W (There should be UPDATE: Setup: OK)

CTRL+ALT+DEL to reboot, unplug USB key

## BIOS settings:

### System Information
- Working Environment: Classic Mode

Press F10 key to save, then enter BIOS again (Delete key)

### M.I.T.
- Advanced Frequency Settings > Advanced CPU Core Settings > Hyper-Threading Technology: Enabled  
- Advanced Memory Settings > Extreme Memory Profile(X.M.P.): Profile1

### BIOS Features
- Full Screen LOGO Show: Disabled

> This removes BGRT table from ACPI stack

- Windows 8 Features: Windows 8  
- Boot Mode Selection: UEFI Only  
- Storage Boot Option Control: UEFI Only  
- Secure Boot: Disabled

Press F10 key to save, then enter BIOS again (Delete key)

### BIOS Features
- CSM Support: Never

Press F10 key to save, then enter BIOS again (Delete key)

### Peripherals
- XHCI Mode: Enabled

>This avoids a lot of issues like USB2 port routing (Method XSEL,ESEL,XWAK), USB devices not working after wake from sleep, iPad charge/discharge through USB2 ports, renaming EHC1/2 to EH01/2

- Legacy USB Support: Disabled  
- Super IO Configuration > Serial Port A: Disabled  
- Intel(R) Ethernet Network Connection i217-V > NIC Configuration > Wake on LAN: Disabled

### Power Management
- Wake on LAN: Disabled

Press F10 key to save, then enter BIOS again (Delete key)

### Power Management
- ErP: Enabled

Press F10 key to save, you are done!

## Now power off PC, remove power cord, switch to the Main BIOS (BIOS_SW > 1) and repeat the above steps!

# Install macOS

## If you want to adventure with Hibernation, first prepare OpenCore for the detection

- config.plist > Misc > Boot > HibernateMode | RTC

"restoreMachineState" MUST be enabled ONLY for hibernation (and not normal sleep). Because of this you have 2 options, see below

__1. Default behaviour__ (for hibernation after standbydelay time):
  - hibernatemode 0  
  - standby 1  
  - autopoweroff 1

Hack will first sleep then, after standbydelay time, will hibernate. To prevent Kernel Panic (Sleep Wake failure in EFI) or hang on a black screen after exit hibernation, we need to use HibernationFixup.kext
  - config.plist > Kernel > Add > [HibernationFixup] (Manually add this entry)  
  - config.plist > Kernel > Patch > [Disable RTC wake scheduling] | false  
  - config.plist > Kernel > Patch > [restoreMachineState] > Enabled | false
  - __REBOOT TWICE!__

HibernationFixup ensures "restoreMachineState" patch is being applied dynamically (only for hibernation, but not for normal sleep)

__2. Pure hibernation__ (never going to normal sleep):
  - config.plist > Kernel > Add > [HibernationFixup] (Manually remove this entry)  
  - config.plist > Kernel > Patch > [Disable RTC wake scheduling] | true  
  - config.plist > Kernel > Patch > [restoreMachineState] > Enabled | true  
  - ``` $ sudo pmset hibernatemode 25 ```
  - __REBOOT TWICE!__

## If you have a Fusion Drive, use this script to make sure autosleep is working!

``` $ sudo mkdir /usr/local/bin ```
``` $ sudo cp kill_UserEeventAgent.sh /usr/local/bin/ ```
``` $ EDITOR=nano sudo crontab -e ```
\> */10 * * * *	/usr/local/bin/kill_UserEeventAgent.sh &>/dev/null
- Reboot
