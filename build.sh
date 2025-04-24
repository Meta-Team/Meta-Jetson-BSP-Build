#!/bin/sh
NV_PREFIX=$PWD
set -x
cd Linux_for_Tegra
cd source
export CROSS_COMPILE=$NV_PREFIX/aarch64--glibc--stable-2022.08-1/bin/aarch64-buildroot-linux-gnu-
make -C kernel
export INSTALL_MOD_PATH=$NV_PREFIX/Linux_for_Tegra/rootfs
sudo -E make install -C kernel
cp kernel/kernel-jammy-src/arch/arm64/boot/Image ../kernel/Image
export IGNORE_PREEMPT_RT_PRESENCE=1
# PWD is source
export KERNEL_HEADERS=$PWD/kernel/kernel-jammy-src 
make modules
sudo -E make modules_install

make dtbs
cp kernel-devicetree/generic-dts/dtbs/* ../kernel/dtb/
cd ..
sudo ./tools/l4t_update_initrd.sh
echo done
