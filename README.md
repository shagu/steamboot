# steamboot

**WARNING: This project is under development and not ready yet.**

<img src="res/controller.png" float="right" align="right">

An [Arch Linux](https://archlinux.org/) based [Live USB](https://en.wikipedia.org/wiki/Live_USB) project, booting your HTPC into [Steam](https://store.steampowered.com/).

All you need is a PC with a local partition that can be used as your steam home drive. This is required in order to provide enough storage for Steam to download and launch games. There's no need to mess around with your bootloader or to setup any dual- or triple-boot. Simply plug in the USB drive and turn any PC into an [Arch Linux](https://archlinux.org) driven HTPC gaming console.

## Features

* **Live USB** - No Installation required
* **Arch Linux** - Always using the latest Packages
* **Desktop Mode** - A Fully featured [GNOME Desktop](https://gnome.org)
* **Media Center** - Pre-installed [Kodi](https://kodi.tv/) media center software
* **GParted** - Resize Partitions directly from the Live ISO
* **Drivers** - NVIDIA, AMD and Intel Graphic Drivers Included

## Getting Started

1. Download the latest ISO from the [Release Page](https://github.com/shagu/steamboot/releases)
2. Write it to your USB drive: `dd if=steamboot-*-x86_64.iso of=/dev/sdX bs=4M conv=fsync`
3. Plug your USB drive into the PC and reboot
4. Create a `steamboot-home` partition when being asked
5. Wait & Enjoy

## Build

1. Install all dependencies

```
sudo pacman -Sy git archiso qemu edk2-ovmf
```

2. Clone the repository

```
git clone https://github.com/shagu/steamboot.git
```

3. Build the Live ISO

```
sudo make
```

4. Test in QEMU (bios)

```
make bios
```

5. Test in QEMU (uefi)

```
make uefi
```