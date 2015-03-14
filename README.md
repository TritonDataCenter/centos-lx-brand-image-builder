# CentOS lx-brand Image Builder

This is a collectiong of scripts used for creating an LX-brand CentOS image.

## Requirements

In orer to use these scripts you'll need:

- A CentOS running in a VM or bare metal (required for the `install` script) 
- A SmartOS (or SDC headnode) install (required for the `create-lx-image` script)

## Usage

1. Run ./install under CentOS to install CentOs 6.6 in a directory. This will create a tarball of the insallation in your working directory (named `centos-6-lx-$YYMMDD.tar.gz`)
2. Copy the tarball to a SmartOS machine or SDC headnode and run `./create-lx-image -t centos-6-lx-$YYMMDD.tar.gz` (subituting the name of your tar file). This will create the image file and manifest.
