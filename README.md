# my_freebsd 
A Simple Script to Configure A Freebsd Openbox Desktop Environment with a Nice Look and Feel. 

### Purpose
The aim of this script is to provide a minimal working desktop, with focus on development tools and security.

# How to use this set of scripts:
This project consists of two scripts for two different phases:
1. Post Install Configuration;
2. Desktop Configuration.

Item 1. will take care of installing a list of programs as defined in the `freebsd_configurer.config` file and bootstrapping a set of config files and system users. Item 2. will take care of giving the system a nice (or at lest a decent) look&feel. 

## Post Install Configuration:
If you start from a vanilla Freebsd installation and you are keen to have a quick up and running Openbox-based Desktop environment, then execute:

```
fetch --no-verify-hostname --no-verify-peer -o /tmp/my_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/master
mkdir -p /tmp/my_freebsd
tar xvzf /tmp/my_freebsd.tar.gz --strip=1 -C /tmp/my_freebsd
cd /tmp/my_freebsd
sh freebsd_configurer
```

## Desktop Configuration:
If you just want to give your system a nice look and feel as shown below 

![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/master/screenshots/2019-11-21_1_1600x900.png)
![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/master/screenshots/2019-11-21_2_1600x900.png)

then execute:

```
fetch --no-verify-hostname --no-verify-peer -o /tmp/my_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/master
mkdir -p /tmp/my_freebsd
tar xvzf /tmp/my_freebsd.tar.gz --strip=1 -C /tmp/my_freebsd
cd /tmp/my_freebsd
sh desktop_configurer
```

## Further Configuration Possibilities:
As mentioned above, both `freebsd_configurer` and `desktop_configurer` are driven by a configuration file named `freebsd_configurer.config`. The `freebsd_configurer.config` is a simple `json-like` file containing a list of programs and flags used for the configuration of the desktop environment. The meaning of each configuration item is described below:

1. base_ports: A category of ports used to configure the base system (e.g. xorg). The list MUST BE comma separated with NO EMPTY SPACE between the items;
2. desktop_ports: A category of ports used to configure the desktop (e.g. openbox, gtk themes, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
3. office_ports: A category of ports used to configure the office suite system wide (e.g. libreoffice). The list MUST BE comma separated with NO EMPTY SPACE between the items;
4. browser_ports: A category of ports used to configure the browsers (e.g. firefox). The list MUST BE comma separated with NO EMPTY SPACE between the items;
5. dev_ports: A category of ports used to configure the development tools system wide (e.g. java, maven, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
6. enable_docker: A flag that enables and configures Docker and a set of utility commands for a specific user. Allowed values: {true|false};
7. port_system: An Enum type that defines the preferred way for installing programs on the system. Allowed values: {PKG|PORT};
8. download_kernel: A flag that enables the download of the kernel sources. Allowed values: {true|false};
9. create_users: A flag that enables the configuration of additional users on the system. Allowed values: {true|false};
10. setup_vpn: A flag that enables the configuration of a set of tools to connect to a set of public OpenVPN Servers (see: https://www.vpnbook.com/freevpn). Allowed values: {true|false}.

The differentiation between `base_ports`, `desktop_ports`, `office_ports` and `dev_ports` is just a logical one and it has no real technical reason. If one wants to add a port to the configuration, it can be added to any of the ports list described above. It should go without saying that the list of ports can be changed and extended to ones' personal taste. The only aim of such configuration is to keep the set of installed ports to the bare minimum, while still providing a decent desktop experience.     

## Examples:
The project comes with some already pre-defined configuration files that can be used as an example to further customize the installation. The examples can be found in the `examples` folder.

## Performance
Having tested this configuration Script only on a Virtual Machine little I can say about real system Performance. Installing programs using PKG takes up to 1h in total and that would be the recommended way of configuring the desktop. The installation process with the PORT System takes up to 24h on an i5 processor.

## Extra:
The Extra folder contains some configuration scripts that are not part and cannot be part of the configuration scripts, but some users may find interesting. One of these is for example, the installation script for MS VSCode.