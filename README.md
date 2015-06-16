Vagrant Kernel Dev Setup
========================
This repository contants Vagrantfile and provisioning script for setting up a Fedora based kernel development setup

Install dependencies
--------------------
Install vagrant using either the official RPM or,

```
$ sudo dnf install vagrant
$ sudo dnf install libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
$ sudo ln -fs /usr/bin/ld.gold /usr/bin/ld
```
Install `libvirt` plugin for Vagrant,

```
$ vagrant plugin install vagrant-libvirt
```

Download Fedora Box
-------------------
Get the latest libvirt/KVM image box from [getfedora.org](https://getfedora.org/en/cloud/download/). Select the libvirt/KVM image. The latest version (Fedora 22, 203MB) of the image is [here](https://download.fedoraproject.org/pub/fedora/linux/releases/22/Cloud/x86_64/Images/Fedora-Cloud-Base-Vagrant-22-20150521.x86_64.vagrant-libvirt.box).

Add the box to vagrant, 

```
$ vagrant box add f22 Fedora-Cloud-Base-Vagrant-22-20150521.x86_64.vagrant-libvirt.box
```

VM Setup
--------
Clone this `git` respository, enter the directory and start the VM.
```
$ cd vagrant-kernel-dev
$ vagrant up --provider=libvirt
```

Vagrant will setup and do provisioning on your VM according to the Vagrantfile specified. You can then simply ssh to your VM using,

```
$ vagrant ssh
```

Now you can start kernel development. Just do `Ctrl+D` to log out from the VM. If you want to erase the VM, just do

```
$ vagrant destroy
```

