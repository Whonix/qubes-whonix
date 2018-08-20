# Qubes Configuration for Whonix-Gateway and Whonix-Workstation #

This package contains all the scripts and configuration options to be able
to run Whonix-Gateway and Whonix-Workstation within a Qubes environment.

Whonix-Gateway should run as a ProxyVM.

Whonix-Workstation should run as an AppVM.

Template updates over Tor.

Package: qubes-whonix-shared-packages-recommended
Architecture: all
Depends: qubes-core-agent (<< 4.0.0-1) | qubes-core-agent-passwordless-root,
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
pulseaudio-qubes | qubes-gui-agent (<< 4.0.0),
${misc:Depends}
Description: Recommended packages for Qubes-Whonix-Workstation
# Recommended packages for Qubes-Whonix-Workstation #

A metapackage, which installs packages, which are recommended for
Qubes-Whonix-Workstation.

Feel free to remove, if you know what you are doing.
## How to install `qubes-whonix` using apt-get ##

1\. Add [Whonix's Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key).

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg adv --keyserver hkp://ipv4.pool.sks-keyservers.net:80 --recv-keys 916B8D99C38EAF5E8ADC7A2A8D66066A2EEACCDA
```

3\. Add Whonix's APT repository.

```
echo "deb http://deb.whonix.org stretch main" | sudo tee /etc/apt/sources.list.d/whonix.list
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

## Payments ##

`qubes-whonix` requires [payments](https://www.whonix.org/wiki/Payments) to stay alive!
