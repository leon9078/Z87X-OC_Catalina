DefinitionBlock ("", "SSDT", 2, "HACK", "_USB", 0x00000000)
{
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
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

    Scope (_SB.PCI0.XHC.RHUB)
    {
        Scope (HS01)
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

        Scope (HS02)
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

        Scope (HS03)
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

        Scope (HS04)
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

        Scope (HS05)
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

        Scope (HS06)
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

        Scope (HS07)
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

        Scope (HS08)
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

        Scope (HS09)
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

        Scope (HS10)
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

        Scope (HS11)
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

        Scope (HS12)
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

        Scope (HS13)
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

        Scope (HS14)
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

        Scope (HS15)
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

        Scope (SSP1)
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

        Scope (SSP2)
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

        Scope (SSP3)
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

        Scope (SSP4)
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

        Scope (SSP5)
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

        Scope (SSP6)
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
}
