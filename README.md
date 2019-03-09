# my_freebsd 
A Simple Script to Configure A Freebsd Openbox Desktop Environment with a Nice Look and Feel. 

### Purpose
The aim of this script is to provide a minimal working desktop, with focus on development tools and security.

# How to use this set of scripts:
This project consists of two scripts for two different phases:
1. Post Install Configuration;
2. Desktop Condifuration.

Item 1. will take care of installing a list of programs as defined in the `post_install.config` file and bootstrapping a set of config files and system users. Item 2. will take care of giving the system a nice (or at lest a decent) look&feel. 

## Post Install Configuration:
If you start from a vanilla Freebsd installation and you are keen to have a quick up and running Openbox-based Desktop environment, then execute:

```
pkg install git
git clone https://github.com/HiMyNameIsIlNano/my_freebsd.git
cd %checkout_folder%
sh post_install
```

## Desktop Configuration:
If you just want to give your system a nice look and feel as shown [here](https://www.gnome-look.org/p/1013723/), then execute:

```
pkg install git
git clone https://github.com/HiMyNameIsIlNano/my_freebsd.git
cd %checkout_folder%
sh desktop_configurer
```

## Further Configuration Possibilities:
As mentioned above, both `post_install` and `desktop_configurer` are driven by a configuration file named `post_install.config`. The `post_install.config` is a simple `json` file containing a list programs and flags used for the configuration of the desktop. The meaning of each configuration item is described below:

1. base_ports: A catgeory of ports used to configure the base system (e.g. xorg). The list MUST BE comma separated with no empty space between the items;
2. desktop_ports: A catgeory of ports used to configure the desktop (e.g. openbox, gtk themes, etc.). The list MUST BE comma separated with no empty space between the items;
3. office_ports: A catgeory of ports used to configure the office suite system wide (e.g. libreoffice). The list MUST BE comma separated with no empty space between the items;
4. dev_ports: A catgeory of ports used to configure the development tools system wide (e.g. java, maven, etc.). The list MUST BE comma separated with no empty space between the items;
5. enable_docker: A flag that enables and configures Docker and a set of utility commands for a specific user. Allowed values: {true|false};
6. init_ports: A flag that enables and checks out the FreeBSD ports tree. Allowed values: {true|false};
7. create_users: A flag that enables the configuration of additional users on the system. Allowed values: {true|false}: 
8. setup_vpn: A flag that enables the configuration of a set of tools to connect to a set of public OpenVPN Servers (see: https://www.vpnbook.com/freevpn). Allowed values:{true|false}   

The differentiation between `base_ports`, `desktop_ports`, `office_ports` and `dev_ports` it is just a logical one and it has no real technical reason. If one wants to add a port to the configuration it can be added to any of the ports list described above. It should go without saying that the list of ports can be changed and extended to ones' personal taste. The only aim of such configuration is to keep the set of installed ports to the bare minimum while still providing a decent desktop experience.     
