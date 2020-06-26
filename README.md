# my_freebsd 
A Simple Script to Configure A Freebsd Desktop Environment with a Nice Look and Feel. The script comes with two flavours: the `openbox-desktop` branch allows the configuration  of an `openbox` desktop.

### Purpose
The aim of this script is to provide a minimal working desktop without putting too many efforts in the configuration.

## BSD Configuration:
The base assumption is that you want to install `Openbox` or `i3` on top of your `BSD` system. In order to do so run the following:  

```
fetch --no-verify-hostname --no-verify-peer -o /tmp/my_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/install-base-system
mkdir -p /tmp/my_freebsd
tar xvzf /tmp/my_freebsd.tar.gz --strip=1 -C /tmp/my_freebsd
cd /tmp/my_freebsd

# As root (or a user with install privileges)
sh freebsd_installer
```

Once the base system is installed one can either decide to install `i3`:

```
######
# i3 #
######

fetch --no-verify-hostname --no-verify-peer -o /tmp/i3_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/i3gaps-desktop
mkdir -p /tmp/i3_freebsd
tar xvzf /tmp/i3_freebsd.tar.gz --strip=1 -C /tmp/i3_freebsd
cd /tmp/i3_freebsd

# As root (or a user with install privileges)
sh i3gaps_installer

# As normal user after the first login
sh first_usage_init
```

or `Openbox`:

```
###########
# Openbox #
###########

fetch --no-verify-hostname --no-verify-peer -o /tmp/openbox_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/openbox-desktop
mkdir -p /tmp/openbox_freebsd
tar xvzf /tmp/openbox_freebsd.tar.gz --strip=1 -C /tmp/openbox_freebsd
cd /tmp/openbox_freebsd

# As root (or a user with install privileges)
sh openbox_installer

# As normal user after the first login
sh first_usage_init
```

## Further Configuration Possibilities:
The `freebsd_installer` is driven by a configuration file named `freebsd_installer.config`. The `freebsd_installer.config` is a simple `json-like` file containing a list of programs and flags used for the configuration of the desktop environment. The meaning of each configuration item is described below:

1. base_ports: A category of ports used to configure the base system (e.g. xorg, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;

## Performance
Having tested this configuration Script only on a Virtual Machine little I can say about real system Performance. Installing programs using PKG takes up to 1h in total and that would be the recommended way of configuring the desktop. The installation process with the PORT System takes up to 24h on an i5 processor.

## Extra:
The Extra folder contains some configuration scripts that are not part and cannot be part of the configuration scripts, but some users may find interesting. One of these is for example, the installation script for MS VSCode.

## TODOs:
- [ ] There is always something to do!
