#!/bin/sh
# Jetson Linux BSP (including tools, scripts etc. )
JETSONPREFIX=r36_release_v4.4
JETSONLINUX_VERSION=r36.4.4
wget "https://developer.nvidia.com/downloads/embedded/l4t/${JETSONPREFIX}/release/Jetson_Linux_${JETSONLINUX_VERSION}_aarch64.tbz2"
# Toolchain
wget https://developer.nvidia.com/downloads/embedded/l4t/r36_release_v3.0/toolchain/aarch64--glibc--stable-2022.08-1.tar.bz2
# Rootfs
wget https://developer.nvidia.com/downloads/embedded/l4t/${JETSONPREFIX}/release/Tegra_Linux_Sample-Root-Filesystem_${JETSONLINUX_VERSION}_aarch64.tbz2
# kernel src
wget https://developer.nvidia.com/downloads/embedded/l4t/${JETSONPREFIX}/sources/public_sources.tbz2
# customized kernel
# about 200MiB
wget https://github.com/Meta-Team/Meta-Jetson-Linux/archive/refs/tags/v0.1.1-rt.tar.gz 
