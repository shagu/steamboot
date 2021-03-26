#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="steamboot"
iso_label="STEAMBOOT_$(date +%Y%m)"
iso_publisher="steamboot <https://archlinux.org>"
iso_application="steamboot live"
iso_version="$(date +%Y.%m.%d)"
install_dir="steamboot"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/bin/live-launcher"]="0:0:755"
  ["/usr/bin/home-prepare"]="0:0:755"
)
