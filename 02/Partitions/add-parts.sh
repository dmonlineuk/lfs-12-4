sudo parted /dev/sda --script \
    mklabel gpt \
    mkpart biosboot 1MiB 2MiB \
    set 1 bios_grub on \
    mkpart boot ext4 2MiB 202MiB \
    mkpart root ext4 202MiB 100% 
