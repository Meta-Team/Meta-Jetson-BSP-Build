# Build tool for Meta Jetson (RT)Linux 
Tested on `Ubuntu-2404`
## Prerequisites
About 20GiB at minimum required for storage
## How to build
```
./download.sh
./extract.sh
./prepare.sh
./build.sh
```
## How to flash
Force Orin Module into Recovery mode, connect it via type-c cable to host and then type
```
./flash_nv.sh
```
