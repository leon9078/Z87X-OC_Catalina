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
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS02)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS03) // Motherboard's internal near CBAT_SW button
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS04)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS05) // External header near Wi-Fi antennas
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS06) // Motherboard's internal near SATA ports
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS07) // Motherboard's external near center
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS08) // Motherboard's external near angle
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS09) // Motherboard's external Hub (1. near HDMI port, 2. far HDMI port 3. far PS/2 port 4. near PS/2 port)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS10) // Motherboard's external Hub (1. far Ethernet port, 2. near Ethernet port)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS11)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS12)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS13) // Motherboard's internal Hub (3. Bluetooth)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, // Proprietary connector
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS14) // External header far Wi-Fi antennas
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            Zero, // USB 2.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.HS15) // Phantom port
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP1)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP2)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP3)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP4)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP5) // Motherboard's external Hub (1. near HDMI port, 2. far HDMI port 3. far PS/2 port 4. near PS/2 port)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, // USB 3.0
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.XHC.RHUB.SSP6) // Motherboard's external Hub (1. far Ethernet port, 2. near Ethernet port)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, // USB 3.0
            Zero, 
            Zero
        })
    }
}
