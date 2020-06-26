# my_freebsd 
A Simple Script to Configure A Freebsd Desktop Environment with a Nice Look and Feel. The script comes with two flavours: the `i3gaps-desktop` branch allows the configuration  of an `i3` desktop.

### Purpose
The aim of this script is to provide a minimal working desktop without putting too many efforts in the configuration.

## Desktop Configuration:
If you want to install i3 on your system a give it the look and feel as shown below 

![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/i3gaps-desktop/screenshots/2020-06-12-093100_1600x900_scrot.png)
![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/i3gaps-desktop/screenshots/2020-06-12-092044_1600x900_scrot.png)

then execute:

```
fetch --no-verify-hostname --no-verify-peer -o /tmp/my_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/i3gaps-desktop
mkdir -p /tmp/my_freebsd
tar xvzf /tmp/my_freebsd.tar.gz --strip=1 -C /tmp/my_freebsd
cd /tmp/my_freebsd

# As root (or a user with install privileges)
sh i3gaps_installer

# As normal user
sh first_usage_init
```

## Further Configuration Possibilities:
The `i3gaps_installer` is driven by a configuration file named `i3gaps_configurer.config`. The `i3gaps_configurer.config` is a simple `json-like` file containing a list of programs and flags used for the configuration of the desktop environment. The meaning of each configuration item is described below:

1. desktop_ports: A category of ports used to configure the desktop (e.g. i3gaps, gtk themes, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
2. office_ports: A category of ports used to configure the office suite system wide (e.g. libreoffice). The list MUST BE comma separated with NO EMPTY SPACE between the items;
3. browser_ports: A category of ports used to configure the browsers (e.g. firefox). The list MUST BE comma separated with NO EMPTY SPACE between the items;
4. dev_ports: A category of ports used to configure the development tools system wide (e.g. java, maven, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
5. enable_docker: A flag that enables and configures Docker and a set of utility commands for a specific user. Allowed values: {true|false};
6. port_system: An Enum type that defines the preferred way for installing programs on the system. Allowed values: {PKG|PORT};

The differentiation between `desktop_ports`, `office_ports` and `dev_ports` is just a logical one and it has no real technical reason. If one wants to add a port to the configuration, it can be added to any of the ports list described above. It should go without saying that the list of ports can be changed and extended to ones' personal taste. The only aim of such configuration is to keep the set of installed ports to the bare minimum, while still providing a decent desktop experience.     

## Performance
Having tested this configuration Script only on a Virtual Machine little I can say about real system Performance. Installing programs using PKG takes up to 1h in total and that would be the recommended way of configuring the desktop. The installation process with the PORT System takes up to 24h on an i5 processor.

## Extra:
The Extra folder contains some configuration scripts that are not part and cannot be part of the configuration scripts, but some users may find interesting. One of these is for example, the installation script for MS VSCode.

## TODOs:
