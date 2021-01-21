# Hackintosh_Main

- BIOS version: F7

- macOS: Catalina

- Version: 10.15.7

- Build: 19H114 (Security Update 2020-001)

- OpenCore version: 0.6.5 DEBUG (January 2021)

- Related kexts: latest RELEASE (January 2021)

Make sure you have reset BIOS before continue (use fpt in DOS environment) [http://www.mediafire.com/download/1ml4lxk6w6cwe89/fpt_DOS-Z87.zip]

## BIOS settings:

### System Information
- Working Environment: Classic Mode

Press F10 key, then enter BIOS again (Delete key)

### M.I.T.
- Advanced Frequency Settings > Advanced CPU Core Settings > Hyper-Threading Technology: Enabled
- Advanced Memory Settings > Extreme Memory Profile(X.M.P.): Profile1

### BIOS Features
- Full Screen LOGO Show: Disabled --> This removes BGRT table
- Windows 8 Features: Windows 8
- Boot Mode Selection: UEFI Only
- Storage Boot Option Control: UEFI Only
- Secure Boot: Disabled

Press F10 key, then enter BIOS again (Delete key)

### BIOS Features
- CSM Support: Never

Press F10 key, then enter BIOS again (Delete key)

### Peripherals
- XHCI Mode: Enabled --> This avoid a lot of issues like USB2 port routing (Method XSEL,ESEL,XWAK), USB devices not working after wake from sleep, iPad charge/discharge through USB2 ports, renaming EHC1/2 to EH01/2
- Legacy USB Support: Auto
- Super IO Configuration > Serial Port A: Disabled
- Intel(R) Ethernet Network Connection i217-V > NIC Configuration > Wake on LAN: Disabled

### Power Management
- Wake on LAN: Disabled

Press F10 key, you're done!


Use RU.EFI tool to disable VT-d, see below --> This removes DMAR table

In a FAT32 USB Drive create a folder named "EFI", enter this folder then create another folder named "BOOT". Drag RU.efi inside "BOOT" and rename to BOOTX64.efi

Boot off the drive, click Enter

Alt+= go to UEFI Variables

Scroll down with PgDown key, select Setup [EC87D643-EBA4-4BB5...], Size: 0x9B4

Scroll down with Ctrl+PgDown, select Variable: 0x2A0 (Value should be 0x1, Enabled)

Click Enter key, type 0, Enter key again, then Ctrl+W (There should be UPDATE: Setup: OK)

Exit RU by typing Alt+Q

Shutdown, Done!
