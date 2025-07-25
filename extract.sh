#!/bin/sh
set -x
VER=0.1.1-rt
JETSONLINUX_VERSION=r36.4.4
tar xf Jetson_Linux_${JETSONLINUX_VERSION}_aarch64.tbz2
sudo tar xpf Tegra_Linux_Sample-Root-Filesystem_${JETSONLINUX_VERSION}_aarch64.tbz2 -C Linux_for_Tegra/rootfs/
tar xf public_sources.tbz2
tar xf aarch64--glibc--stable-2022.08-1.tar.bz2 
cd Linux_for_Tegra
cd source
#tar xf kernel_src.tbz2
tar xf ../../v$VER.tar.gz -C kernel
cd kernel
mv Meta-Jetson-Linux-$VER kernel-jammy-src
cd ..
tar xf kernel_oot_modules_src.tbz2
tar xf nvidia_kernel_display_driver_source.tbz2
./generic_rt_build.sh "enable"
