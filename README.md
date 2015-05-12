# CentOS lx-brand Image Builder

This is a collection of scripts used for creating an LX-brand CentOS image.

## Requirements

In order to use these scripts you'll need:

- A CentOS running in a KVM viarutal machine or bare metal (required for the `install` script). Running `install` in a CentOs lx-brand zone is not supported. The major version of the CentOS machine you use to run the `install` script must be the same as the version you intend to install in the chroot directory (e.g., if you want to install CentOS 6, your host machine should also be CentOS 6
- A SmartOS (or SDC headnode) install (required for the `create-lx-image` script)

## Usage

1. Run `./install -d <chroot> -m <mirror> -i <image name> -p <proper name> -u <image docs>` under CentOS 6 to install CentOS 6.X in a given directory. This will create a tarball of the installation in your working directory (named `<image name>-$YYMMDD.tar.gz`). See ./install -h for detailed usage.
2. Copy the tarball to a SmartOS machine or SDC headnode and run `./create-lx-image -t /full/path/to/<image name>-<YYMMDD>.tar.gz` (substituting the name of your tar file). This will create the image file and manifest.
