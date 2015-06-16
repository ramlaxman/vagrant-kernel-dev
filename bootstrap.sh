#!/usr/bin/env bash

set -e

dnf upgrade -y kernel-core
dnf install -y vim
dnf install -y gcc make git
dnf install -y ncurses-devel
dnf install -y kernel-devel

