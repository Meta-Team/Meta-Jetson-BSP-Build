#!/bin/sh
set -x
tar xf Jetson_Linux_R36.4.3_aarch64.tbz2
sudo tar xpf Tegra_Linux_Sample-Root-Filesystem_R36.4.3_aarch64.tbz2 -C Linux_for_Tegra/rootfs/
tar xf public_sources_36.4.3.tbz2
tar xf tar xf aarch64--glibc--stable-2022.08-1.tar.bz2
cd Linux_for_Tegra
cd source
tar xf kernel_src.tbz2
tar xf kernel_oot_modules_src.tbz2
tar xf nvidia_kernel_display_driver_source.tbz2
./generic_rt_build.sh "enable"
