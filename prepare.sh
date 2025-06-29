#!/bin/sh
set -x
cd Linux_for_Tegra/
sudo ./tools/l4t_flash_prerequisites.sh
sudo ./apply_binaries.sh
sudo apt-get install flex bison binutils make libssl-dev
