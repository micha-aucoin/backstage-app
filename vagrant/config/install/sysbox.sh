#!/bin/bash

# Download Sysbox package
curl -L https://downloads.nestybox.com/sysbox/releases/v0.6.3/sysbox-ce_0.6.3-0.linux_amd64.deb -o sysbox-ce_0.6.3-0.linux_amd64.deb

# Verify checksum
echo "cfce811006a27305071b1634ca8fe690392f5dcc205612e7b4e5bde411b7701e  sysbox-ce_0.6.3-0.linux_amd64.deb" | sha256sum -c -

# Install Sysbox
sudo apt-get install -y ./sysbox-ce_0.6.3-0.linux_amd64.deb

# Verify Sysbox installation
if systemctl is-active --quiet sysbox; then
    echo "Sysbox is running."
else
    echo "Sysbox is not running."
    exit 1 # Exit with an error status if Sysbox is not running
fi

# Clean up
rm sysbox-ce_0.6.3-0.linux_amd64.deb