# Qubes Configuration for Whonix-Gateway and Whonix-Workstation #

This package contains all the scripts and configuration options to be able
to run Whonix-Gateway and Whonix-Workstation within a Qubes environment.

Whonix-Gateway should run as a ProxyVM.

Whonix-Workstation should run as an AppVM.

Template updates over Tor.

Package: qubes-whonix-shared-packages-recommended
Architecture: all
Depends: qubes-core-agent (<< 4.0.0-1) | qubes-core-agent-passwordless-root,
qubes-kernel-vm-support, initramfs-tools, qubes-mgmt-salt-vm-connector,
qubes-usb-proxy, qubes-input-proxy-sender,
qubes-core-agent-thunar, qubes-core-agent-nautilus,
${misc:Depends}
Description: Recommended packages for Qubes-Whonix-Gateway and Qubes-Whonix-Workstation
# Recommended packages for Qubes-Whonix-Gateway and Qubes-Whonix-Workstation #

A metapackage, which includes recommended packages to ensure, Qubes-Whonix
standard tools are available and other useful recommended packages.

Safe to remove, if you know what you are doing.

Package: qubes-whonix-gateway-packages-recommended
Architecture: all
Depends: tinyproxy,
yum,
yum-utils,
qubes-core-agent (<< 4.0.0-1) | qubes-core-agent-dom0-updates,
${misc:Depends}
Description: Recommended packages for Qubes-Whonix-Gateway
# Recommended packages for Qubes-Whonix-Gateway #

A metapackage, which installs packages, which are recommended for
Qubes-Whonix-Gateway.

Safe to remove, if you know what you are doing.

Package: qubes-whonix-workstation-packages-recommended
Architecture: all
Depends: qubes-thunderbird,
qubes-gpg-split,
qubes-pdf-converter,
qubes-img-converter,
pulseaudio-qubes | qubes-gui-agent (<< 4.0.0),
${misc:Depends}
Description: Recommended packages for Qubes-Whonix-Workstation
# Recommended packages for Qubes-Whonix-Workstation #

A metapackage, which installs packages, which are recommended for
Qubes-Whonix-Workstation.

Feel free to remove, if you know what you are doing.
## How to install `qubes-whonix` using apt-get ##

1\. Download [Whonix's Signing Key]().

```
wget https://www.whonix.org/patrick.asc
```

Users can [check Whonix Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key) for better security.

2\. Add Whonix's signing key.

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg add ~/patrick.asc
```

3\. Add Whonix's APT repository.

```
echo "deb https://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/whonix.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `qubes-whonix`.

```
sudo apt-get install qubes-whonix
```

## How to Build deb Package ##

Replace `apparmor-profile-torbrowser` with the actual name of this package with `qubes-whonix` and see [instructions](https://www.whonix.org/wiki/Dev/Build_Documentation/apparmor-profile-torbrowser).

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`qubes-whonix` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
