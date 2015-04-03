# CentOS lx-brand Image Builder

This is a collection of scripts used for creating an LX-brand CentOS image.

## Requirements

In order to use these scripts you'll need:

- A CentOS running in a VM or bare metal (required for the `install` script) 
- A SmartOS (or SDC headnode) install (required for the `create-lx-image` script)

## Usage

1. Run `./install -d <chroot> -m <mirror> -i <image name> -p <proper name> -u <image docs>` under CentOS 6 to install CentOS 6.X in a given directory. See ./install -h for detailed usage. This will create a tarball of the installation in your working directory (named `centos-6-lx-$YYMMDD.tar.gz`). See `./install -h` for usage.
2. Copy the tarball to a SmartOS machine or SDC headnode and run `./create-lx-image -t centos-6-lx-$YYMMDD.tar.gz` (substituting the name of your tar file). This will create the image file and manifest.
