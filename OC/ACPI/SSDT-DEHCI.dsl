DefinitionBlock ("", "SSDT", 2, "HACK", "_DEHCI", 0x00000000)
{
    External (_SB_.PCI0.EH01, DeviceObj)
    External (_SB_.PCI0.EH02, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (_SB.PCI0.EH01)
    {
        OperationRegion (RMP1, PCI_Config, 0x54, 0x02)
        Field (RMP1, WordAcc, NoLock, Preserve)
        {
            PSTE,   2
        }
    }

    Scope (_SB.PCI0.EH02)
    {
        OperationRegion (RMP1, PCI_Config, 0x54, 0x02)
        Field (RMP1, WordAcc, NoLock, Preserve)
        {
            PSTE,   2
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RMP1, PCI_Config, 0xF0, 0x04)
        Field (RMP1, DWordAcc, NoLock, Preserve)
        {
            RCB1,   32
        }

        OperationRegion (FDM1, SystemMemory, ((RCB1 & 0xFFFFFFFFFFFFC000) + 0x3418), 0x04)
        Field (FDM1, DWordAcc, NoLock, Preserve)
        {
                ,   13, 
            FDE2,   1, 
                ,   1, 
            FDE1,   1
        }
    }

    Device (_SB.PCI0.RMD2)
    {
        Name (_HID, "RMD20000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            ^^EH01.PSTE = 0x03
            ^^LPCB.FDE1 = One
            ^^EH02.PSTE = 0x03
            ^^LPCB.FDE2 = One
        }
    }
}
