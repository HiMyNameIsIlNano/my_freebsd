# my_freebsd 
A Simple Script to Configure A Freebsd Desktop Environment with a Nice Look and Feel. The script comes with two flavours: the `openbox-desktop` branch allows the configuration  of an `openbox` desktop.

### Purpose
The aim of this script is to provide a minimal working desktop without putting too many efforts in the configuration.

## Desktop Configuration:
If you want to install Openbox on your system a give it the look and feel as shown below 

![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/openbox-desktop/screenshots/2019-11-21_1_1600x900.png)
![Settings Window](https://raw.github.com/HiMyNameIsIlNano/my_freebsd/openbox-desktop/screenshots/2019-11-21_2_1600x900.png)

then execute:

```
fetch --no-verify-hostname --no-verify-peer -o /tmp/openbox_freebsd.tar.gz https://api.github.com/repos/HiMyNameIsIlNano/my_freebsd/tarball/openbox-desktop
mkdir -p /tmp/openbox_freebsd
tar xvzf /tmp/openbox_freebsd.tar.gz --strip=1 -C /tmp/openbox_freebsd
cd /tmp/openbox_freebsd

# As root (or a user with install privileges)
[sudo] sh openbox_installer

# As normal user
sh first_usage_init
```

## Further Configuration Possibilities:
The `desktop_configurer` is driven by a configuration file named `openbox_installer.config`. The `openbox_installer.config` is a simple `json-like` file containing a list of programs and flags used for the configuration of the desktop environment. The meaning of each configuration item is described below:

1. desktop_ports: A category of ports used to configure the desktop (e.g. openbox, gtk themes, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
2. office_ports: A category of ports used to configure the office suite system wide (e.g. libreoffice). The list MUST BE comma separated with NO EMPTY SPACE between the items;
3. browser_ports: A category of ports used to configure the browsers (e.g. firefox). The list MUST BE comma separated with NO EMPTY SPACE between the items;
4. dev_ports: A category of ports used to configure the development tools system wide (e.g. java, maven, etc.). The list MUST BE comma separated with NO EMPTY SPACE between the items;
5. enable_docker: A flag that enables and configures Docker and a set of utility commands for a specific user. Allowed values: {true|false};
6. port_system: An Enum type that defines the preferred way for installing programs on the system. Allowed values: {PKG|PORT};

The differentiation between `desktop_ports`, `office_ports` and `dev_ports` is just a logical one and it has no real technical reason. If one wants to add a port to the configuration, it can be added to any of the ports list described above. It should go without saying that the list of ports can be changed and extended to ones' personal taste. The only aim of such configuration is to keep the set of installed ports to the bare minimum, while still providing a decent desktop experience.     

## Performance
Having tested this configuration Script only on a Virtual Machine little I can say about real system Performance. Installing programs using PKG takes up to 1h in total and that would be the recommended way of configuring the desktop. The installation process with the PORT System takes up to 24h on an i5 processor.

## TODOs:
- [ ] There is always something to do
