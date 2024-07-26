Unofficial AppImage of GNOME Boxes built on top of "Conty", the portable Arch Linux container that runs everywhere.

| ![Istantanea_2024-07-26_02-13-48](https://github.com/user-attachments/assets/55634de4-b572-4df4-bc1f-804f5f5f7e80) | ![Istantanea_2024-07-26_02-43-41](https://github.com/user-attachments/assets/d848e5bb-697b-45ea-8ae2-bb00118a828a) | ![Istantanea_2024-07-26_03-03-42](https://github.com/user-attachments/assets/0890c0e6-f23c-4abc-acc8-42a5db0b138b) |
| - | - | - |

---------------------------------

### How it works

1. Download the AppImage from https://github.com/ivan-hc/Boxes-appimage/releases
2. Made it executable
```
chmod a+x ./*.AppImage
```
3. Run it, do this the first time from terminal, since the internal "Conty" script may detect if you need Nvidia drivers for your GPU
```
./*.AppImage
```
this may need seconds before you can use GNOME Boxes.

This AppImage does NOT require libfuse2, being it a new generation one.

---------------------------------

### How to build it

Currently, the AppImage I produced contains the following structure:
```
|---- AppRun
|---- bottles.desktop
|---- org.gnome.Boxes.svg
|---- conty.sh
```
1. The AppRun is the core script of the AppImage
2. The .desktop file of GNOME Boxes
3. The icon of GNOME Boxes
4. The Arch Linux container named "conty.sh", it contains GNOME Boxes.

Points 1, 2 and 3 are the essential elements of any AppImage.

The script "conty.sh" (4) is the big one among the elements of this AppImage.

This is what each file of my workflow is ment for:
1. [create-arch-bootstrap.sh](https://github.com/ivan-hc/VirtualBox-appimage/blob/main/create-arch-bootstrap.sh) creates an Arch Linux chroot, where GNOME Boxes is installed. This is the first script to be used ("root" required);
2. [create-conty.sh](https://github.com/ivan-hc/VirtualBox-appimage/blob/main/create-conty.sh) is the second script used in this process, it converts the Arch Linux chroot created by "create-arch-bootstrap.sh" into a big script named "conty.sh", that includes "conty-start.sh";
3. [conty-start.sh](https://github.com/ivan-hc/VirtualBox-appimage/blob/main/conty-start.sh) is the script responsible of startup inizialization processes to made Conty work. It includes a function that detects the version of the Nvidia drivers needed, if they are needed, the script downloads and installs them in ~/.local/share/Conty. Also it is responsible of full integration of Conty with the host system, using "bubblewrap;
4. [utils_dwarfs.tar.gz](https://github.com/ivan-hc/VirtualBox-appimage/blob/main/utils_dwarfs.tar.gz) contains "dwarfs", a set of tools similar to squashfs to compress filesystems, and it is needed to compress "conty.sh" as much as possible;
5. [virtualbox-conty-builder.sh](https://github.com/ivan-hc/VirtualBox-appimage/blob/main/virtualbox-conty-builder.sh) is a script i wrote to pundle "conty.sh" near the AppRun, the .desktop file and the icon to convert everything into an AppImage. It is ment to be used in github actions.

Files 1, 2, 3 and 4 come from my fork of https://github.com/Kron4ek/Conty

Files 1, 2 and 3 are a mod of the original ones to made them smaller and with only what its needed to made GNOME Boxes work.

To learn more about "Conty", to download more complete builds or to learn more on how to create your own, visit the official repository of the project:

https://github.com/Kron4ek/Conty
--------------

---------------------------------

## Troubleshot

### ◆ Very slow first startup
At the first start, if necessary, the drivers for your video card will be downloaded, via Conty (see screenshot above). This may take several seconds or even minutes. This behaviour will only be noticed if when you first start it, you launch GNOME Boxes from the terminal instead of using the launcher.

---------------------------------

## Credits

- Conty https://github.com/Kron4ek/Conty

------------------------------------------------------------------------

## Install and update it with ease

### *"*AM*" Application Manager* 
#### *Package manager, database & solutions for all AppImages and portable apps for GNU/Linux!*

[![Istantanea_2024-06-26_17-00-46 png](https://github.com/ivan-hc/AM/assets/88724353/671f5eb0-6fb6-4392-b45e-af0ea9271d9b)](https://github.com/ivan-hc/AM)

[![Readme](https://img.shields.io/github/stars/ivan-hc/AM?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AM/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AM?label=&style=for-the-badge)](https://github.com/ivan-hc/AM/blob/main/LICENSE)

*"AM"/"AppMan" is a set of scripts and modules for installing, updating, and managing AppImage packages and other portable formats, in the same way that APT manages DEBs packages, DNF the RPMs, and so on... using a large database of Shell scripts inspired by the Arch User Repository, each dedicated to an app or set of applications.*

*The engine of "AM"/"AppMan" is the "APP-MANAGER" script which, depending on how you install or rename it, allows you to install apps system-wide (for a single system administrator) or locally (for each user).*

*"AM"/"AppMan" aims to be the default package manager for all AppImage packages, giving them a home to stay.*

*You can consult the entire **list of managed apps** at [**portable-linux-apps.github.io/apps**](https://portable-linux-apps.github.io/apps).*

## *Go to *https://github.com/ivan-hc/AM* for more!*

------------------------------------------------------------------------

| [***Install "AM"***](https://github.com/ivan-hc/AM) | [***See all available apps***](https://portable-linux-apps.github.io) | [***Support me on ko-fi.com***](https://ko-fi.com/IvanAlexHC) | [***Support me on PayPal.me***](https://paypal.me/IvanAlexHC) |
| - | - | - | - |

------------------------------------------------------------------------
