#!/bin/sh
set -x
cd Linux_for_Tegra/
sudo ./tools/l4t_flash_prerequisites.sh
sudo ./apply_binaries.sh
sudo apt-get install flex bison binutils make libssl-dev
# apply patches (dtsi)
cp ../tegra234-mb1-bct-pinmux-p3767-dp-a03.dtsi bootloader/generic/BCT
cp ../tegra234-p3768-0000+p3767-xxxx-nv-common.dtsi source/hardware/nvidia/t23x/nv-public/nv-platform
