DefinitionBlock ("", "SSDT", 2, "HACK", "_ESEL", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)

    Method (_SB.PCI0.XHC.ESEL, 0, NotSerialized)
    {
    }
}
