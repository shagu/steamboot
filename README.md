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

## Build

1. Install all dependencies

```
pacman -Sy git archiso qemu edk2-ovmf
```

2. Clone the repository

```
https://github.com/shagu/steamboot.git
```

3. Build the Live ISO

```
make
```

4. Test in QEMU (bios)

```
make bios
```

5. Test in QEMU (uefi)

```
make uefi
```