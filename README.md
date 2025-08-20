# Qubes Configuration for Whonix-Gateway and Whonix-Workstation #

This package contains all the scripts and configuration options to be able
to run Whonix-Gateway and Whonix-Workstation within a Qubes environment.

Whonix-Gateway should run as a ProxyVM.

Whonix-Workstation should run as an AppVM.

Template updates over Tor.

## How to install `qubes-whonix` using apt-get ##

1\. Download the APT Signing Key.

```
wget https://www.whonix.org/keys/derivative.asc
```

Users can [check the Signing Key](https://www.whonix.org/wiki/Signing_Key) for better security.

2\. Add the APT Signing Key.

```
sudo cp ~/derivative.asc /usr/share/keyrings/derivative.asc
```

3\. Add the derivative repository.

```
echo "deb [signed-by=/usr/share/keyrings/derivative.asc] https://deb.whonix.org trixie main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `qubes-whonix`.

```
sudo apt-get install qubes-whonix
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions.

NOTE: Replace `generic-package` with the actual name of this package `qubes-whonix`.

* **A)** [easy](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Premium Support](https://www.whonix.org/wiki/Premium_Support)

## Donate ##

`qubes-whonix` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
