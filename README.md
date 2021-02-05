# Hackintosh_Main

- macOS: Catalina  
- Version: 10.15.7  
- Build: 19H512 (Security Update 2021-001)

- OpenCore: 0.6.6 RELEASE (February 2021)  
- Related kexts: latest RELEASE (February 2021)

\>>> Hardware

\- GIGABYTE GA-Z87X-OC // rev 1.1  
\- Intel Core i7-4770K // Q2'13 (Haswell)  
\- Intel HD Graphics 4600  
\- NVIDIA GeForce GFX 770 // ASUS 2 GB GDDR5  
\- Crucial Ballistix Tactical // DDR3 1600 MHz CL8 (2 x 8 GB)  
\- Broadcom BCM94360CD // 802.11ac + Bluetooth 4.0  
\- Samsung SSD 850 EVO 250 GB // SATA  
\- Cooler Master B700 // 700W

- BIOS: F8 (This version fixes a lot of issues)

1) Problematic memory map (issues with wake from sleep, happening even on Linux)

\- Kernel trap at ... type=13 (memory protection)
\- Kernel trap at ... type=14 (page fault)
\- a freed zone element has been modified in X expected Y
\- Possible memory corruption: pmap_pv_remove

and so on...

2) Conflicting RTC memory offset: 8A (inside IOHibernateRTCVariables)

\- This prevent macOS from going into hibernation, resulting in a CMOS reset

This motherboard has proprietary DualBIOS technology, so we need to update the BIOS twice.

1) Shutdown PC and remove power cord  
2) Switch to the Backup BIOS (BIOS_SW > 2)
3) Update the BIOS to F8

For the 3rd step, we need a USB Flash Drive (64 MB+) to write fpt

#### Windows

- Open rufus, select fpt_DOS-Z87.iso, flash

#### macOS

``` $ sudo dd if=/path/to/fpt_DOS-Z87.iso of=/dev/rdiskX bs=1m && sudo sync ```

#### Linux

``` $ sudo dd if=/path/to/fpt_DOS-Z87.iso of=/dev/sdX bs=1M oflag=sync ```

To boot from legacy DOS environment, make sure you have the following settings in BIOS

\- BIOS Features > CSM Support: Always  
\- BIOS Features > Boot Mode Selection: UEFI and Legacy // Legacy Only  
\- BIOS Features > Storage Boot Option Control: Legacy Only  
\- Peripherals > Legacy USB Support: Enabled

Boot from the USB flash drive, then wait until you see "FPT Operation Passed"

N.B. -savemac argument will save our own MAC Address, so we don't need to reflash it later

CTRL+ALT+DEL to restart, unplug USB key

Shutdown, remove power cord, do a CMOS reset (CMOS_SW)

Boot, select Restore to Optimized then reboot

## BIOS settings:

### System Information
- Working Environment: Classic Mode

Press F10 key, then enter BIOS again (Delete key)

### M.I.T.
- Advanced Frequency Settings > Advanced CPU Core Settings > Hyper-Threading Technology: Enabled  
- Advanced Memory Settings > Extreme Memory Profile(X.M.P.): Profile1

### BIOS Features
- Full Screen LOGO Show: Disabled --> This removes BGRT ACPI table  
- Windows 8 Features: Windows 8  
- Boot Mode Selection: UEFI Only  
- Storage Boot Option Control: UEFI Only  
- Secure Boot: Disabled

Press F10 key, then enter BIOS again (Delete key)

### BIOS Features
- CSM Support: Never

Press F10 key, then enter BIOS again (Delete key)

### Peripherals
- XHCI Mode: Enabled --> This avoids a lot of issues like USB2 port routing (Method XSEL,ESEL,XWAK), USB devices not working after wake from sleep, iPad charge/discharge through USB2 ports, renaming EHC1/2 to EH01/2  
- Legacy USB Support: Disabled  
- Super IO Configuration > Serial Port A: Disabled  
- Intel(R) Ethernet Network Connection i217-V > NIC Configuration > Wake on LAN: Disabled

### Power Management
- Wake on LAN: Disabled

Press F10 key, then enter BIOS again (Delete key)

### Power Management
- ErP: Enabled

Press F10 key, you are done!


Use RU.efi tool to disable VT-d, see below --> This removes DMAR ACPI table

Extract 5.27.0388.zip

Take back the USB Drive, remove all content from it, then in the root create a folder named "EFI", inside this folder create another one named "BOOT". Drag RU.efi inside "BOOT" and rename to BOOTx64.efi

Boot from the USB drive, click Enter

Alt+= go to UEFI Variables

Scroll down with PgDown key, select Setup [EC87D643-EBA4-4BB5...], Size: 0x9B4

Scroll down with Ctrl+PgDown, select Variable: 0x2A0 (Value should be 0x1, Enabled)

Click Enter key, type 0, Enter key again, then Ctrl+W (There should be UPDATE: Setup: OK)

Shutdown

## Now switch to the Main BIOS (BIOS_SW > 1) and repeat the above steps!
