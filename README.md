# Device Tree for OnePlus 6T (fajita)

The OnePlus 6T (codenamed _"fajita"_) is a flagship smartphone from OnePlus.
It was released in November 2018.

| Basic                   | Spec Sheet                                                                                                                   |
| :---------------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| CPU                     | Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)                                                              |
| Chipset                 | Qualcomm SDM845 Snapdragon 845                                                                                               |
| GPU                     | Adreno 630                                                                                                                   |
| Memory                  | 6/8 GB RAM                                                                                                                   |
| Shipped Android Version | 9                                                                                                                            |
| Storage                 | 64/128/256 GB                                                                                                                |
| Battery                 | Non-removable Li-Po 3700 mAh battery                                                                                         |
| Display                 | Optic AMOLED, 1080 x 2340 pixels, 19:9 ratio (~402 ppi density)                                                              |
| Camera (Back)           | Dual: 16 MP (f/1.7, 27mm, 1/2.6", 1.22µm, gyro-EIS, OIS) + 20 MP (16 MP effective, f/1.7, 1/2.8", 1.0µm), PDAF, dual-LED flash|
| Camera (Front)          | 16 MP (f/2.0, 25mm, 1/3", 1.0µm), gyro-EIS, Auto HDR, 1080p                                                                  |

Copyright 2018 - The LineageOS Project.

![OnePlus 6T](https://cdn2.gsmarena.com/vv/pics/oneplus/oneplus-6t-thunder-purple-1.jpg "OnePlus 6T")

## Hola amiguitos

This is my attempt to fix up and add a little crDroid customization flavor back into the device tree for OnePlus 6T (fajita).

Rebased on the official lineage-22.0 branch from the LineageOS device tree as of December 2024.

---

## 📂 Repository Contents

This repository contains the device-specific configuration and rootfs overlays for the **OnePlus 6T ("fajita")** running Something OS.

* **`BoardConfig.mk`**: Makefile containing all partition locations, bootloader offsets, page sizes, and system layout properties.
* **`system.prop`**: System properties file containing display and UI layout dimension overrides (e.g. status bar and navigation bar heights).
* **`rootfs-overlay/`**: Configs overlayed directly into the target Ubuntu rootfs:
  * `/etc/udev/rules.d/99-touchscreen.rules`: Hardware-specific touchscreen matrix mapping.
  * `/etc/systemd/system/`: Systemd services to handle the boot screen/charger exit and disable network management hooks.
  * `/etc/gdm3/custom.conf`: Autologin rules for the `ubuntu` user under GDM.
  * `/etc/pulse/`: Audio/PulseAudio configurations for the SDM845 chipset.

---

## 🛠️ Build and Flash

All build, compilation, and flashing processes are orchestrated from the workspace root directory using the global Makefile.

To build the boot image or filesystem for this device, navigate to the **workspace root** and run:

```bash
# Build the boot image
make bootimg DEVICE=fajita

# Build the system image (rootfs)
make rootfs DEVICE=fajita

# Flash boot and rootfs to the device
make flash-all DEVICE=fajita
```

For a comprehensive guide on requirements, build commands, and overall project architecture, see the global **[README.md](../../../README.md)** at the root of the workspace.