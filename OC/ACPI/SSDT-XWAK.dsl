DefinitionBlock ("", "SSDT", 2, "HACK", "_XWAK", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)

    Method (_SB.PCI0.XHC.XWAK, 0, NotSerialized)
    {
    }
}
