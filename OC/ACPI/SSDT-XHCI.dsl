DefinitionBlock ("", "SSDT", 2, "Z87XOC", "XHCI", 0x00000000)
{
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS11, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS12, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS13, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS15, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP2, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP3, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP4, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP5, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP6, DeviceObj)

    Scope (_SB.PCI0.XHC.RHUB.HS01)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS02)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS03)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS04)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS05)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS06)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS07)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS08)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS09)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x03, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS10)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x03, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS11)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS12)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS13)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS14)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS15)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP1)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP2)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP3)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP4)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP5)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x03, 
                Zero, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP6)
    {
        If (_OSI ("Darwin"))
        {
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x03, 
                Zero, 
                Zero
            })
        }
    }
}
