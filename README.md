# my_freebsd 
A Simple Script to Configure A Freebsd Openbox Desktop Environment with a Nice Look and Feel

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

