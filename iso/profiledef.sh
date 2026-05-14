iso_name="furch"
iso_label="FURCH_2026"
iso_publisher="Furch"
iso_application="Furch Linux"
iso_version="$(date +%Y.%m.%d)"

install_dir="furch"

buildmodes=('iso')

bootmodes=(
  'bios.syslinux'
  'uefi.grub'
)

arch="x86_64"

pacman_conf="pacman.conf"

airootfs_image_type="squashfs"

file_permissions=(
  ["/usr/local/bin/furchinstall"]="0:0:755"
)